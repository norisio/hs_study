
colSeries :: Int -> Int -> Int
colSeries st 1 = st+1
colSeries st n
  | even n = colSeries (st+1) (n `div` 2)
  | odd n  = colSeries (st+1) (3 * n + 1)

colSeriesLength = colSeries 0
