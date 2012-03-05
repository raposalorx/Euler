primes = 2:3:[x| x<-can, all ((0/=).(rem x)) $ takeWhile (<=(truncate.sqrt.fromIntegral $ x)) primes] where 1:can = [6*k+r| k<-[0..], r<-[1,5]]

goal = 600851475143

factors = [x|x<- (takeWhile (<=(truncate.sqrt.fromIntegral $ goal)) primes), goal`rem`x==0]

main = putStrLn $ show $ (head.reverse) factors
