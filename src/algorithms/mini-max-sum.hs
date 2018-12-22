solve :: [Int] -> String
solve xs = show min ++ " " ++ show max
  where min = sum $ init xs
        max = sum $ tail xs

parse :: String -> [Int]
parse input = map read $ words input :: [Int]

main :: IO()
main = do
  input <- getLine
  putStrLn $ solve $ parse input