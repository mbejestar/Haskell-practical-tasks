-- Combined Haskell code for all tasks in one file
-- To run a specific task, uncomment its section and comment out others

module Main where

-- -------------------------------------------
-- HC9T1: Define a Parametric Type Synonym
{-
type Entity a = (String, a) -- e.g., (Address, a)
main :: IO ()
main = do
    let personEntity = ("123 Main St", "John Doe")
    print personEntity
-}

-- -------------------------------------------
-- HC9T2: Implement a Parametric Data Type
{-
data Box a = Empty | Has a deriving (Show)

main :: IO ()
main = do
    let emptyBox = Empty
    let valueBox = Has 42
    print emptyBox
    print valueBox
-}

-- -------------------------------------------
-- HC9T3: Function to Add Values in a Box
{-
addN :: Num a => a -> Box a -> Box a
addN n (Has x) = Has (x + n)
addN _ Empty = Empty

main :: IO ()
main = do
    let box1 = Has 10
    let updatedBox = addN 5 box1
    print updatedBox
-}

-- -------------------------------------------
-- HC9T4: Extract a Value from a Box
{-
extract :: a -> Box a -> a
extract defVal Empty = defVal
extract _ (Has x) = x

main :: IO ()
main = do
    let box1 = Has "Hello"
    let box2 = Empty
    putStrLn $ "Extracted from box1: " ++ extract "Default" box1
    putStrLn $ "Extracted from box2: " ++ extract "Default" box2
-}

-- -------------------------------------------
-- HC9T5: Parametric Data Type with Record Syntax
{-
data Shape a = Circle { color :: a }
             | Rectangle { color :: a }
             deriving (Show)

main :: IO ()
main = do
    let c = Circle { color = "Red" }
    let r = Rectangle { color = "Blue" }
    print c
    print r
-}

-- -------------------------------------------
-- HC9T6: Recursive Data Type for Tweets
{-
data Tweet = Tweet {
    content :: String,
    likes :: Int,
    comments :: [Tweet]
} deriving (Show)

main :: IO ()
main = do
    let comment1 = Tweet "Nice post!" 5 []
    let comment2 = Tweet "I agree" 3 []
    let mainTweet = Tweet "Hello world" 10 [comment1, comment2]
    print mainTweet
-}

-- -------------------------------------------
-- HC9T7: Engagement Function for Tweets
{-
engagement :: Tweet -> Int
engagement (Tweet _ likes comments) = likes + sum (map engagement comments)

main :: IO ()
main = do
    let comment1 = Tweet "Nice" 2 []
    let comment2 = Tweet "Interesting" 4 []
    let tweet = Tweet "Check this out" 5 [comment1, comment2]
    putStrLn $ "Engagement: " ++ show (engagement tweet)
-}

-- -------------------------------------------
-- HC9T8: Recursive Sequence Data Type
{-
data Sequence a = EmptySeq | Node a (Sequence a) deriving (Show)

elemSeq :: Eq a => a -> Sequence a -> Bool
elemSeq _ EmptySeq = False
elemSeq x (Node y rest) = x == y || elemSeq x rest

main :: IO ()
main = do
    let seq1 = Node 1 (Node 2 (Node 3 EmptySeq))
    print $ elemSeq 2 seq1
    print $ elemSeq 5 seq1
-}

-- -------------------------------------------
-- HC9T9: Check for Element in a Sequence
-- (Included in HC9T8 as `elemSeq`)

-- -------------------------------------------
-- HC9T10: Binary Search Tree Data Type
{-
data BST a = EmptyBST | NodeBST a (BST a) (BST a) deriving (Show)

-- Example insertion function
insertBST :: Ord a => a -> BST a -> BST a
insertBST x EmptyBST = NodeBST x EmptyBST EmptyBST
insertBST x (NodeBST y left right)
    | x < y = NodeBST y (insertBST x left) right
    | x > y = NodeBST y left (insertBST x right)
    | otherwise = NodeBST y left right -- no duplicates

main :: IO ()
main = do
    let tree = insertBST 10 $ insertBST 5 $ insertBST 15 EmptyBST
    print tree
-}
