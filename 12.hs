import Data.List
import Data.Maybe
--import Data.Numbers.Primes
--import Debug.Trace

factor :: Int -> [Int]
factor x = base++(map (x`div`) $ reverse base)
  where base = filter ((0==).(rem x)) $ takeWhile (<=(truncate.sqrt.fromIntegral $ x)) [1..]

--filterRoot n = (<=(truncate.sqrt.fromIntegral $ n))

{-factor n = iter [] base
  where base = [x|x<- takeWhile (filterRoot n) primes, n`rem`x==0]
        iter prev [] = prev
        iter prev cur | trace ((show prev) ++ "\n" ++ (show cur) ++ "\n" ++ (show $ 
              filter (filterRoot n) $ nub $ 
                (\z-> (++) z $ foldl1 (++) $ map (\x-> map (\y->x*y) prev) $ cur++z) $
                  foldl1 (++) $ map (\x-> map ((head x)*) $ x) $ (init.tails) cur) ++ "\n\n") False = undefined
        iter prev cur = (\z-> if z==[] then nub $ prev++cur else iter (nub $ prev++cur) z) $
              filter (filterRoot n) $ nub $
                (\z-> (++) z $ foldl1 (++) $ map (\x-> map (\y->x*y) prev) $ cur++z) $
                  foldl1 (++) $ map (\x-> map ((head x)*) $ x) $ (init.tails) cur
-}

cands :: [Int]
cands = unfoldr (\(b,s)-> Just (s,(b+1,s+b+1))) (1,1)

main :: IO()
main = print $ fromMaybe 0 $ find (\x-> length (factor x) > 500) cands
