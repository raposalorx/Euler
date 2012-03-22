import Data.Array

{-recurse :: Int -> [Int]
recurse 1 = [1]
recurse n = (n:) $ recurse $ newN n
-}

newN 0 = 0
newN 1 = 1
newN n | n`rem`2 == 0 = n`div`2
       | otherwise = (3*n)+1

cap = 999999

cands = listArray (0,cap) $ 0:1:[(1+) $ find $ newN y| y <- [2..cap]]
  where
    find n  | n<=cap = cands!n
            | otherwise = (1+) $ find $ newN n

main = putStrLn $ show $ foldr1 (\(x,x1) (y,y1) -> if x1 >= y1 then (x,x1) else (y,y1)) $ map (\x -> (x,cands!x)) [1..cap]
