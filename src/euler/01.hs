import Data.List

main = do
  cases <- readLn
  forM [1..cases] $ \_ -> do
    limit <- readLn
    let max = limit - 1
    print $ sum $ map [3,6..max] `union` [5,10..max]