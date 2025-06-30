-- HC5T1: Apply a function three times
applyThrice :: (Int -> Int) -> Int -> Int
applyThrice f x = f (f (f x))

-- HC5T2: Filtering odd numbers from 1 to 30
oddNumbers :: [Int]
oddNumbers = filter odd [1..30]

-- HC5T3: Check for uppercase-starting words using `any`
import Data.Char (isUpper)

containsUppercaseWord :: [String] -> Bool
containsUppercaseWord = any (\word -> not (null word) && isUpper (head word))

-- HC5T4: Using lambda for biggerThan10
biggerThan10 :: Int -> Bool
biggerThan10 = \x -> x > 10

-- HC5T5: Partial application to multiply by 5
multiplyByFive :: Int -> Int
multiplyByFive = (*) 5

-- HC5T6: Function composition to square numbers and filter even results
evenSquares :: [Int] -> [Int]
evenSquares = filter even . map (^2)

-- HC5T7: Rewrite with `$` operator
result :: Int
result = sum $ map (*2) $ filter (>3) [1..10]

-- HC5T8: Point-free version of addFive
addFive :: Int -> Int
addFive = (+5)

-- HC5T9: Apply a function twice to every list element
transformList :: (a -> a) -> [a] -> [a]
transformList f = map (f . f)

-- HC5T10: Combine filter, map, and any to check if any square > 50
anySquareGreaterThan50 :: [Int] -> Bool
anySquareGreaterThan50 = any (>50) . map (^2) . filter (>0)
