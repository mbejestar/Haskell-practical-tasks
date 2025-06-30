-- HC6T1: Recursive factorial
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- HC6T2: Recursive nth Fibonacci number
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

-- HC6T3: Sum of elements using foldr
sumList :: [Int] -> Int
sumList = foldr (+) 0

-- HC6T4: Product of elements using foldl
productList :: [Int] -> Int
productList = foldl (*) 1

-- HC6T5: Reverse a list using recursion
reverseList :: [a] -> [a]
reverseList []     = []
reverseList (x:xs) = reverseList xs ++ [x]

-- HC6T6: Check if an element exists in a list
elementExists :: Eq a => a -> [a] -> Bool
elementExists _ [] = False
elementExists e (x:xs)
  | e == x    = True
  | otherwise = elementExists e xs

-- HC6T7: Compute the length of a list
listLength :: [a] -> Int
listLength []     = 0
listLength (_:xs) = 1 + listLength xs

-- HC6T8: Filter even numbers from a list
filterEvens :: [Int] -> [Int]
filterEvens [] = []
filterEvens (x:xs)
  | even x    = x : filterEvens xs
  | otherwise = filterEvens xs

-- HC6T9: Custom map implementation
myMap :: (a -> b) -> [a] -> [b]
myMap _ []     = []
myMap f (x:xs) = f x : myMap f xs

-- HC6T10: Recursive digit extraction
digits :: Int -> [Int]
digits n
  | n < 10    = [n]
  | otherwise = digits (n `div` 10) ++ [n `mod` 10]
