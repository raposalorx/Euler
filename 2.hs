import Data.List

main = putStrLn $ show $ foldl1 (+) $ takeWhile (<=4000000) [x| x <- (unfoldr (\(a,b) -> Just (a,(b,a+b))) (1,1)), x`rem`2==0]
