infixr 5 :-:
data List a = Empty | a :-: (List a) deriving (Show, Eq, Ord, Read)

infixr 5 ^++
(^++) :: List a -> List a -> List a
Empty ^++ ys = ys
(x :-: xs) ^++ ys = x :-: (xs ^++ ys)


-- Binary Tree
data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving(Show)

singleton :: a -> Tree a
singleton = \x -> Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert val (Node x t1 t2)
    | val < x   = Node x (treeInsert val t1) t2
    | val == x  = Node x t1 t2
    | x < val   = Node x t1 (treeInsert val t2)
treeInsert val EmptyTree = singleton val


treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem val (Node x t1 t2)
    | val < x   = treeElem val t1
    | val == x  = True
    | x < val   = treeElem val t2
treeElem val EmptyTree = False


makeTree :: (Ord a) => [a] -> Tree a
makeTree = foldr treeInsert EmptyTree
