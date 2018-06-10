take' :: Int -> [a] -> [a]
take' n list
  | n <= 0 = []
  | otherwise = [head list] ++ take' (n-1) (tail list)


take'' :: Int -> [a] -> [a]
take'' n _
  | n <= 0 = []
take'' _ [] = []
take'' n (x:xs) = x : take'' (n-1) xs

