isPalendrom x = (show x) == (reverse $ show x)

cands = [a*b| a<- [999,998..100], b<- [999,998..100]]

main = putStrLn $ show $ foldl1 max $ filter isPalendrom cands
