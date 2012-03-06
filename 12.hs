import Data.List

factor x = base++(map (x`div`) $ reverse $ base)
  where base = filter ((0==).(rem x)) $ takeWhile (<=(truncate.sqrt.fromIntegral $ x)) [1..]

cands = unfoldr (\(b,s)-> Just (s,(b+1,s+b+1))) (1,1)

main = putStrLn $ show $ maybe 0 (\x->x) $ find (\x-> length (factor x) > 500) $ cands
