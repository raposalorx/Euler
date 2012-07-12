end = 100
sumSquares = foldl1 (+) $ map (truncate.(**2)) [1..end]
squareSums = (truncate.(**2)) $ foldl1 (+) [1..end]

main = putStrLn $ show $ squareSums-sumSquares
