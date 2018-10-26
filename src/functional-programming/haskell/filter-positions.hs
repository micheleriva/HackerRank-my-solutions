import Control.Monad.State

f :: [Int] -> [Int]
f lst = map (lst !!) [1,3..length lst - 1]

main = do
	inputdata <- getContents
	mapM_ (putStrLn. show). f. map read. lines $ inputdata