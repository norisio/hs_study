import Data.Char

encode :: Int -> String -> String
encode offset str = map chr $ map (+ offset) $ map ord str

decode :: Int -> String -> String
decode = \offset -> encode (negate offset)

