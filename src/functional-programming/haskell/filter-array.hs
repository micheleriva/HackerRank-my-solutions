f :: Int -> [Int] -> [Int]
f n arr = filter (< n) arr

main = do 
    n <- readLn :: IO Int 
    inputdata <- getContents 
    let 
        numbers = map read (lines inputdata) :: [Int] 
    putStrLn . unlines $ (map show . f n) numbers