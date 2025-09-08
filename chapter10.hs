-- Combined Haskell code for all tasks in one file
-- To run a specific task, uncomment its section and comment out others

module Main where

-- -------------------------------------------
-- HC10T1: ShowSimple Type Class
{-
class ShowSimple a where
    showSimple :: a -> String

instance ShowSimple PaymentMethod where
    showSimple Cash = "Cash"
    showSimple Card = "Card"
    showSimple Cryptocurrency = "Cryptocurrency"

main :: IO ()
main = do
    print $ showSimple Cash
    print $ showSimple Cryptocurrency
-}

-- -------------------------------------------
-- HC10T2: Summable Type Class
{-
class Summable a where
    sumUp :: [a] -> a

instance Summable Int where
    sumUp = sum

main :: IO ()
main = do
    print $ sumUp [1, 2, 3, 4, 5]
-}

-- -------------------------------------------
-- HC10T3: Comparable Type Class
{-
class Comparable a where
    compareWith :: a -> a -> Ordering

data Blockchain = Blockchain String deriving (Show)

instance Comparable Blockchain where
    compareWith (Blockchain id1) (Blockchain id2) = compare id1 id2

main :: IO ()
main = do
    let bc1 = Blockchain "abc123"
    let bc2 = Blockchain "def456"
    print $ compareWith bc1 bc2
-}

-- -------------------------------------------
-- HC10T4: Eq Instance for Box
{-
data Box a = Box a | Empty deriving (Show)

instance (Eq a) => Eq (Box a) where
    (==) (Box x) (Box y) = x == y
    (==) Empty Empty = True
    (==) _ _ = False

main :: IO ()
main = do
    let b1 = Box 5
    let b2 = Box 5
    let b3 = Box 10
    print $ b1 == b2
    print $ b1 == b3
    print $ Empty == Empty
-}

-- -------------------------------------------
-- HC10T5: ShowDetailed Type Class
{-
class ShowDetailed a where
    showDetailed :: a -> String

data User = User { username :: String, email :: String } deriving (Show)

instance ShowDetailed User where
    showDetailed (User u e) = "User: " ++ u ++ ", Email: " ++ e

main :: IO ()
main = do
    let user = User "john_doe" "john@example.com"
    putStrLn $ showDetailed user
-}

-- -------------------------------------------
-- HC10T6: Mutual Recursion in Eq for Blockchain
{-
data Blockchain = BCNode String Blockchain | End deriving (Show)

instance Eq Blockchain where
    (==) End End = True
    (==) (BCNode id1 rest1) (BCNode id2 rest2) = (id1 == id2) && (rest1 == rest2)
    (==) _ _ = False

    (/=) a b = not (a == b)

main :: IO ()
main = do
    let chain1 = BCNode "abc" (BCNode "def" End)
    let chain2 = BCNode "abc" (BCNode "def" End)
    let chain3 = BCNode "xyz" End
    print (chain1 == chain2)
    print (chain1 == chain3)
-}

-- -------------------------------------------
-- HC10T7: Convertible Type Class
{-
class Convertible a b where
    convert :: a -> b

instance Convertible PaymentMethod String where
    convert Cash = "Cash"
    convert Card = "Card"
    convert Cryptocurrency = "Cryptocurrency"

main :: IO ()
main = do
    print $ convert Cash
    print $ convert Cryptocurrency
-}

-- -------------------------------------------
-- HC10T8: AdvancedEq Subclass of Eq
{-
class Eq a => AdvancedEq a where
    compareEquality :: a -> a -> Bool

instance Eq a => AdvancedEq a where
    compareEquality x y = x == y

main :: IO ()
main = do
    print $ compareEquality 5 5
    print $ compareEquality "hello" "world"
-}

-- -------------------------------------------
-- HC10T9: MinMax Type Class
{-
class MinMax a where
    minValue :: a
    maxValue :: a

instance MinMax Int where
    minValue = minBound
    maxValue = maxBound

main :: IO ()
main = do
    putStrLn $ "Int min: " ++ show (minValue :: Int)
    putStrLn $ "Int max: " ++ show (maxValue :: Int)
-}

-- -------------------------------------------
-- HC10T10: Concatenatable Type Class
{-
class Concatenatable a where
    concatWith :: a -> a -> a

instance Concatenatable [Char] where
    concatWith = (++)

main :: IO ()
main = do
    let str1 = "Hello, "
    let str2 = "World!"
    putStrLn $ concatWith str1 str2
-}
