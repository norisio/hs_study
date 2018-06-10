
qs :: Ord a => [a] -> [a]
qs [] = []
qs (x:xs) = qs [e | e <- xs, e < x] ++ [x] ++ qs [e | e <- xs, e > x]
