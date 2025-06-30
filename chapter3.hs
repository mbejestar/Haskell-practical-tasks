-- HC3T1 - Task 1: Check if a number is positive, negative, or zero
checkNumber :: Int -> String
checkNumber n =
  if n > 0 then "Positive"
  else if n < 0 then "Negative"
  else "Zero"

-- HC3T2 - Task 2: Grade using guards
grade :: Int -> String
grade score
  | score >= 90 = "A"
  | score >= 80 = "B"
  | score >= 70 = "C"
  | score >= 60 = "D"
  | otherwise   = "F"

-- HC3T3 - Task 3: RGB to Hex
rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
  let toHex x = if x < 16 then '0':showHex x "" else showHex x ""
  in "#" ++ toHex r ++ toHex g ++ toHex b

-- Needed for rgbToHex
import Numeric (showHex)

-- HC3T4 - Task 4: Heron's formula
triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
  let s = (a + b + c) / 2
  in sqrt (s * (s - a) * (s - b) * (s - c))

-- HC3T5 - Task 5: Triangle type
triangleType :: Float -> Float -> Float -> String
triangleType a b c
  | a == b && b == c = "Equilateral"
  | a == b || b == c || a == c = "Isosceles"
  | otherwise = "Scalene"

-- HC3T6 - Task 6: Leap year
isLeapYear :: Int -> Bool
isLeapYear year =
  if year `mod` 400 == 0 then True
  else if year `mod` 100 == 0 then False
  else year `mod` 4 == 0

-- HC3T7 - Task 7: Season
season :: Int -> String
season month
  | month == 12 || month == 1 || month == 2 = "Winter"
  | month >= 3 && month <= 5 = "Spring"
  | month >= 6 && month <= 8 = "Summer"
  | month >= 9 && month <= 11 = "Autumn"
  | otherwise = "Invalid month"

-- HC3T8 - Task 8: BMI category
bmiCategory :: Float -> Float -> String
bmiCategory weight height
  | bmi < 18.5 = "Underweight"
  | bmi < 25.0 = "Normal"
  | bmi < 30.0 = "Overweight"
  | otherwise  = "Obese"
  where bmi = weight / (height ^ 2)

-- HC3T9 - Task 9: Max of three using let
maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z =
  let max1 = if x > y then x else y
      max2 = if max1 > z then max1 else z
  in max2

-- HC3T10 - Task 10: Palindrome check
isPalindrome :: String -> Bool
isPalindrome str
  | length str <= 1 = True
  | head str == last str = isPalindrome (init (tail str))
  | otherwise = False
