helloWorld :: Int -> IO ()
helloWorld n = putStrLn $ unlines (replicate n "Hello World")

main :: IO ()
main = do
    n <- readLn
    helloWorld n