import Control.Monad (forM_) 

main = do
  cases <- readLn
  forM_ [1..cases] $ \_ -> do
    limit <- readLn
    let max = limit - 1
    print $ sum $ map (\n -> if n `mod` 3 == 0 || n `mod` 5 == 0 then n else 0) [1..max]