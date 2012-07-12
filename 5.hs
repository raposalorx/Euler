isDiv x = all (\a-> x`rem`a==0) [11,12,13,14,15,16,17,18,19,20]
bottom = foldl1 (*) [2,3,5,7,11,13,17,19,20]
main = putStrLn $ show $ head $ filter isDiv [bottom,bottom+20..]
