import Data.List (group, sort)

count :: Int -> Int
count x
  | x == 2    = 1
  | otherwise = x `div` 2

countPairs :: [[Int]] -> [Int]
countPairs xs = map count items
  where items = map length xs

pair :: [Int] -> [Int]
pair xs 
  | even $ length xs = xs
  | otherwise        = drop 1 xs

solve :: [Int] -> String
solve xs = show $ sum $ countPairs $ map pair filtered
  where list = group $ sort xs
        filtered = filter (\x-> length x >= 2) list

parse :: String -> [Int]
parse input = map read $ words input :: [Int]

main :: IO()
main = do
  _      <- getLine
  input  <- getLine
  putStrLn $ solve $ parse input
