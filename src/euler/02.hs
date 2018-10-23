import Control.Monad.State

fibo n = flip.evalState (0,1) $ do
  forM_ [0..(n-1)] $ \_ -> do
    (a,b) <- get
    put (b,a+b)
  (a,b) <- get
  return a

main = do
  cases <- readLn
  forM_ [1..cases] $ \_ -> do
    limit <- readLn
    print $ sum $ map (\n -> if isEven (fibo n) then n else 0) [1..limit]
    where isEven x = x `mod` 2 == 0