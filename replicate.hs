replicate' :: Int -> Int -> [Int]
replicate' v 0 = []
replicate' v r = [v] ++ replicate' v (r-1)
