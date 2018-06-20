
reverse' :: [a] -> [a]
reverse' = foldl (\x -> \y -> y : x) []
reverse'' :: [a] -> [a]
reverse'' = foldl (\accum new -> new : accum) []
reverse''' :: [a] -> [a]
reverse''' = foldl (flip (:)) []


filter' :: (a -> Bool) -> [a] -> [a]
filter' pred = foldr (\new accum -> if pred new then new:accum else accum) []

last' :: [a] -> a
last' = foldr1 (\new accum -> accum)


sqrtSums :: Int
sqrtSums = length $ takeWhile (<1000) $ scanl1 (+) $ map sqrt [1..]
