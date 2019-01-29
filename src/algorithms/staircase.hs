duplicate :: String -> Int -> String
duplicate string n = concat $ replicate n string

staircase :: Int -> Int -> IO ()
staircase n 0   = putStrLn $ duplicate  "#" n
staircase 0 n   = staircase 1 (n - 1)
staircase acc n = do
  putStrLn $ duplicate " " n ++ duplicate  "#" acc
  staircase (acc + 1) (n - 1)

main :: IO()
main = do
  n <- readLn :: IO Int
  staircase 0 n