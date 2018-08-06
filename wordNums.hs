import Data.List

countLength :: [a] -> (a, Int)
countLength l = (head l, length l)

wordNums :: String -> [(String, Int)]
wordNums = map countLength . group . sort . words
