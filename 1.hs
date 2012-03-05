main = putStrLn $ show $ foldl1 (+) [x| x <- [3..999], x `rem` 3 == 0 || x `rem` 5 == 0]

