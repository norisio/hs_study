import Data.List

isIn :: Eq a => [a] -> [a] -> Bool
isIn needle haystack = any ( needle `isPrefixOf` ) $ tails haystack
-- needle `isIn` haystack でもOK

