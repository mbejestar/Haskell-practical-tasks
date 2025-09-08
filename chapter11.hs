-- Combined Haskell code for all tasks in one file
-- To run a specific task, uncomment its section and comment out others

module Main where

import Data.Char (toUpper)
import Control.Monad (when)

-- -------------------------------------------
-- HC11T1: Greet the User
{-
main :: IO ()
main = do
    putStrLn "Enter your name:"
    name <- getLine
    putStrLn $ "Hello, " ++ name ++ "!"
-}

-- -------------------------------------------
-- HC11T2: Count Characters in a Line
{-
main :: IO ()
main = do
    putStrLn "Enter a line:"
    line <- getLine
    putStrLn $ "Number of characters: " ++ show (length line)
-}

-- -------------------------------------------
-- HC11T3: Double a Number
{-
main :: IO ()
main = do
    putStrLn "Enter a number:"
    numStr <- getLine
    case reads numStr of
        [(num, "")] -> putStrLn $ "Double: " ++ show (num * 2)
        _ -> putStrLn "Invalid number!"
-}

-- -------------------------------------------
-- HC11T4: Concatenate Two Lines
{-
main :: IO ()
main = do
    putStrLn "Enter first line:"
    line1 <- getLine
    putStrLn "Enter second line:"
    line2 <- getLine
    putStrLn $ "Concatenated: " ++ line1 ++ line2
-}

-- -------------------------------------------
-- HC11T5: Repeat Until "quit"
{-
main :: IO ()
main = do
    let loop = do
            putStrLn "Enter input (type 'quit' to stop):"
            input <- getLine
            if input == "quit"
                then putStrLn "Goodbye!"
                else do
                    putStrLn $ "You entered: " ++ input
                    loop
    loop
-}

-- -------------------------------------------
-- HC11T6: Uppercase Converter
{-
main :: IO ()
main = do
    putStrLn "Enter a line:"
    line <- getLine
    putStrLn $ "Uppercase: " ++ map toUpper line
-}

-- -------------------------------------------
-- HC11T7: User Options
{-
main :: IO ()
main = do
    putStrLn "Choose an option:"
    putStrLn "1. Greet"
    putStrLn "2. Count characters"
    putStrLn "3. Exit"
    choice <- getLine
    case choice of
        "1" -> do
            putStrLn "Enter your name:"
            name <- getLine
            putStrLn $ "Hello, " ++ name ++ "!"
        "2" -> do
            putStrLn "Enter a line:"
            line <- getLine
            putStrLn $ "Number of characters: " ++ show (length line)
        "3" -> putStrLn "Goodbye!"
        _ -> putStrLn "Invalid choice."
-}

-- -------------------------------------------
-- HC11T8: Even or Odd Checker
{-
main :: IO ()
main = do
    putStrLn "Enter a number:"
    numStr <- getLine
    case reads numStr of
        [(num, "")] -> if even num
                        then putStrLn "Even"
                        else putStrLn "Odd"
        _ -> putStrLn "Invalid number!"
-}

-- -------------------------------------------
-- HC11T9: Sum Two Numbers
{-
main :: IO ()
main = do
    putStrLn "Enter first number:"
    n1Str <- getLine
    putStrLn "Enter second number:"
    n2Str <- getLine
    case (reads n1Str, reads n2Str) of
        ([(n1, "")], [(n2, "")]) -> putStrLn $ "Sum: " ++ show (n1 + n2)
        _ -> putStrLn "Invalid input!"
-}

-- -------------------------------------------
-- HC11T10: Reverse User Input
{-
main :: IO ()
main = do
    putStrLn "Enter something:"
    input <- getLine
    putStrLn $ "Reversed: " ++ reverse input
-}
