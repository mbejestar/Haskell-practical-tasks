-- To run a specific task, uncomment its section and comment out others

module Main where

import System.IO
import System.IO.Error (catchIOError)
import Data.List (sort)

-- -------------------------------------------
-- HC12T1: Print a Welcome Message
{-
main :: IO ()
main = putStrLn "Welcome to Haskell Programming!"
-}

-- -------------------------------------------
-- HC12T2: Add Two Numbers
{-
addTwoNumbers :: Int -> Int -> Int
addTwoNumbers x y = x + y

main :: IO ()
main = do
    putStrLn "Enter first number:"
    n1Str <- getLine
    putStrLn "Enter second number:"
    n2Str <- getLine
    case (reads n1Str, reads n2Str) of
        ([(n1, "")], [(n2, "")]) -> print (addTwoNumbers n1 n2)
        _ -> putStrLn "Invalid input!"
-}

-- -------------------------------------------
-- HC12T3: Factorial Function
{-
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

main :: IO ()
main = do
    putStrLn "Enter a positive integer:"
    nStr <- getLine
    case reads nStr of
        [(n, "")] -> print (factorial n)
        _ -> putStrLn "Invalid input!"
-}

-- -------------------------------------------
-- HC12T4: First 10 Fibonacci Numbers
{-
fib :: Int -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

main :: IO ()
main = do
    let fibs = map fib [0..9]
    putStrLn "First 10 Fibonacci numbers:"
    print fibs
-}

-- -------------------------------------------
-- HC12T5: Palindrome Checker
{-
isPalindrome :: String -> Bool
isPalindrome s = let cleaned = map toLower s in cleaned == reverse cleaned

import Data.Char (toLower)

main :: IO ()
main = do
    putStrLn "Enter a string:"
    str <- getLine
    if isPalindrome str
        then putStrLn "It's a palindrome!"
        else putStrLn "It's not a palindrome."
-}

-- -------------------------------------------
-- HC12T6: Sort a List of Integers
{-
main :: IO ()
main = do
    putStrLn "Enter integers separated by spaces:"
    line <- getLine
    let nums = map read (words line) :: [Int]
    let sortedNums = sort nums
    putStrLn "Sorted list:"
    print sortedNums
-}

-- -------------------------------------------
-- HC12T7: Calculate Circle Area
{-
calculateCircleArea :: Double -> Double
calculateCircleArea r = pi * r * r

main :: IO ()
main = do
    putStrLn "Enter radius of the circle:"
    rStr <- getLine
    case reads rStr of
        [(r, "")] -> putStrLn $ "Area: " ++ show (calculateCircleArea r)
        _ -> putStrLn "Invalid input!"
-}

-- -------------------------------------------
-- HC12T8: Merge Two Sorted Lists
{-
mergeLists :: Ord a => [a] -> [a] -> [a]
mergeLists xs [] = xs
mergeLists [] ys = ys
mergeLists (x:xs) (y:ys)
    | x <= y    = x : mergeLists xs (y:ys)
    | otherwise = y : mergeLists (x:xs) ys

main :: IO ()
main = do
    putStrLn "Enter first sorted list of integers separated by spaces:"
    line1 <- getLine
    putStrLn "Enter second sorted list of integers separated by spaces:"
    line2 <- getLine
    let list1 = map read (words line1) :: [Int]
    let list2 = map read (words line2) :: [Int]
    print $ mergeLists list1 list2
-}

-- -------------------------------------------
-- HC12T9: Read and Print File Content
{-
main :: IO ()
main = do
    putStrLn "Enter filename to read:"
    filename <- getLine
    contentOrError <- catchIOError (readFile filename) (\_ -> return "Error: File not found.")
    putStrLn "File content:"
    putStrLn contentOrError
-}

-- -------------------------------------------
-- HC12T10: Mathematical Operations Module
-- Since modules are external files, here we'll define some functions and demonstrate usage
{-
-- Define some math functions
add :: Num a => a -> a -> a
add x y = x + y

subtract' :: Num a => a -> a -> a
subtract' x y = x - y

multiply :: Num a => a -> a -> a
multiply x y = x * y

main :: IO ()
main = do
    putStrLn $ "Add 3 + 4 = " ++ show (add 3 4)
    putStrLn $ "Subtract 10 - 5 = " ++ show (subtract' 10 5)
    putStrLn $ "Multiply 6 * 7 = " ++ show (multiply 6 7)
-}
