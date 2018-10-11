f :: Int -> [Int] -> [Int]
f n arr = [num | num <- arr, a <- [1..n]]

main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words