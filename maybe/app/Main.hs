module Main where

import Lib

-- applyMaybe :: Maybe a -> (a -> Maybe b) -> Maybe b
-- applyMaybe Nothing f = Nothing
-- applyMaybe (Just x) f = f x

type Birds = Int
type Pole = (Birds, Birds)

landLeft :: Birds -> Pole -> Maybe Pole
landLeft n (l, r) = if abs (newl - r) <= 3 then return (newl, r) else Nothing
  where
    newl = l + n
landRight :: Birds -> Pole -> Maybe Pole
landRight n (l, r) = if abs (l - newr) <= 3 then return (l, newr) else Nothing
  where
    newr = r + n

x -: f = f x

main :: IO ()
main = putStrLn $ show  $ return (0, 0)  >>= landLeft 2 >>= landRight 3
