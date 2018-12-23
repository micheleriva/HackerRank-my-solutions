main = do
  ls <- lines <$> (getLine >> getContents)
  mapM_ output (map rotate ls)
  where
    rotate str = r $ take (length str) $ iterate r str
    r [] = []
    r (x:xs) = xs ++ [x]
    output strs = putStrLn $ unwords strs