import Data.List

format :: String -> String
format az | length az == 1 = [head az]
          | otherwise      = head az : (show . length) az

compress :: String -> String
compress s = concatMap format $ group s

main = do
    str <- getLine
    putStrLn $ compress str