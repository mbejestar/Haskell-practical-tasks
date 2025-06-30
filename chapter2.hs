-- C2T1 - Task 1: Checking Types in GHCi
-- Expected types before checking:
-- 42              :: Num a => a (defaults to Int)
-- 3.14            :: Fractional a => a (defaults to Double)
-- "Haskell"       :: [Char] (a String)
-- 'Z'             :: Char
-- True && False   :: Bool

-- You can check these types in GHCi using :t, like:
-- :t 42
-- :t 3.14
-- :t "Haskell"
-- :t 'Z'
-- :t True && False


-- C2T2 - Task 2: Function Type Signatures and Implementations
add :: Int -> Int -> Int
add x y = x + y

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

concatStrings :: String -> String -> String
concatStrings s1 s2 = s1 ++ s2


-- C2T3 - Task 3: Immutable Variables
myAge :: Int
myAge = 25

piValue :: Double
piValue = 3.14159

greeting :: String
greeting = "Hello, Haskell!"

isHaskellFun :: Bool
isHaskellFun = True

-- Uncommenting the line below will cause a compile-time error, because variables are immutable.
-- myAge = 30  -- Error: Multiple declarations of ‘myAge’


-- C2T4 - Task 4: Converting Between Infix and Prefix Notations

-- Prefix notation:
prefix1 = (+) 5 3
prefix2 = (*) 10 4
prefix3 = (&&) True False

-- Infix notation:
infix1 = 7 + 2
infix2 = 6 * 5
infix3 = True && False


-- C2T5 - Task 5: Defining and Using Functions
circleArea :: Float -> Float
circleArea r = pi * r * r

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree a b c = max a (max b c)

-- Example usage in GHCi:
-- circleArea 3.0
-- maxOfThree 5 10 7


-- C2T6 - Task 6: Understanding Int vs Integer
smallNumber :: Int
smallNumber = 2^62

bigNumber :: Integer
bigNumber = 2^127

-- In GHCi, run: 2^64 :: Int  -- Might overflow on some systems


-- C2T7 - Task 7: Boolean Expressions
trueWithAnd :: Bool
trueWithAnd = True && True

falseWithOr :: Bool
falseWithOr = False || False

trueWithNot :: Bool
trueWithNot = not False

comparisonFalse :: Bool
comparisonFalse = 10 < 5
