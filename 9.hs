root x = if b==0.0 then fromIntegral a else 0.0
  where (a,b) = properFraction.sqrt $ x

cands = [truncate (a*b*c)| a<- [1..], b<- [a..(1000-a)], let c = root $ (a**2)+(b**2), c/=0.0, a+b+c==1000]

main = putStrLn $ show $ head cands
