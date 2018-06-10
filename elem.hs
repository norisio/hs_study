elem' :: Eq a => a -> [a] -> Bool
elem' _ [] = False
elem' v (x:xs) = (v==x) || elem' v xs

