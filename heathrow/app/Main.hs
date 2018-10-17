module Main where

import Lib


data Section = Section { getA::Int, getB::Int, getC::Int } deriving(Show)
type RoadSystem = [Section]

heathrowToLondon :: RoadSystem
heathrowToLondon = [
  Section 50 10 30,
  Section 5 90 20,
  Section 40 2 25,
  Section 10 8 0
  ]

data Label = A | B | C deriving(Show)
type Path = [(Label, Int)]

pathCost :: Path -> Int
pathCost p = sum (map snd p)

roadStep :: (Path, Path) -> Section -> (Path, Path)
roadStep (pathA, pathB) (Section a b c) = (newPathToA, newPathToB) where
  timeA = pathCost pathA
  timeB = pathCost pathB
  forwardTimeToA = timeA + a
  forwardTimeToB = timeB + b
  crossTimeToA   = timeB + b + c
  crossTimeToB   = timeA + a + c
  newPathToA = if forwardTimeToA <= crossTimeToA then (A, a):pathA else (C, c):(B, b):pathB
  newPathToB = if forwardTimeToB <= crossTimeToB then (B, b):pathB else (C, c):(A, a):pathA


optimalPath :: RoadSystem -> Path
optimalPath rs = if pathCost path1 <= pathCost path2 then path1 else path2 where
  paths = foldl roadStep ([], []) rs 
  path1 = fst paths
  path2 = snd paths


main :: IO ()
main = putStrLn $ show $ reverse (optimalPath heathrowToLondon)
