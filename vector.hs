
data Vector a = Vector a a a deriving(Show)


vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = (i*l)+(j*m)+(k*n)

vmult :: (Num a) => a -> Vector a -> Vector a
scalar `vmult` (Vector i j k) = Vector (scalar*i) (scalar*j) (scalar*k)
