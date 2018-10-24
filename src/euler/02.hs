import Control.Monad.State

fibo :: Integer -> Integer
fibo 0 = 0
fibo 1 = 1
fibo n = fibo (n-1) + fibo (n-2)

isEven :: Integer -> Bool
isEven x = x `mod` 2 == 0

main = do
  cases <- readLn
  forM_ [1..cases] $ \_ -> do
    limit <- readLn
    print $ sum $ map (\n -> if isEven (fibo n) then n else 0) [1..limit]