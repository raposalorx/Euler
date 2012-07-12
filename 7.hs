primes = 2:3:[x| x<-can, all ((0/=).(rem x)) $ takeWhile (<=(truncate.sqrt.fromIntegral $ x)) primes] where 1:can = [6*k+r| k<-[0..], r<-[1,5]]

main = putStrLn $ show $ primes!!10000
