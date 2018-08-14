import Data.List



solveRPN :: String -> Double
solveRPN rpnstr = head $ foldl operate [] (words  rpnstr)

operate :: [Double] -> String -> [Double]
operate (operand1:operand2:xs) "+"  = (operand1 + operand2):xs
operate (operand1:operand2:xs) "-"  = (operand2 - operand1):xs
operate (operand1:operand2:xs) "*"  = (operand1 * operand2):xs
operate accum num = (read num):accum

main = do
  rpnstr <- getLine
  print $ solveRPN rpnstr
