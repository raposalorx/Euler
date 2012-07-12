import Data.List

main :: IO()
main = print $ sum $ takeWhile (<=4000000) [x | x <- (unfoldr (\(a,b) -> Just (a,(b,a+b))) (1,1)), x`rem`2==0]
