-- HC4T1 - Task 1: weatherReport using pattern matching
weatherReport :: String -> String
weatherReport "sunny"  = "It's a bright and beautiful day!"
weatherReport "rainy"  = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _        = "Weather unknown"

-- HC4T2 - Task 2: dayType function
dayType :: String -> String
dayType "Saturday" = "It's a weekend!"
dayType "Sunday"   = "It's a weekend!"
dayType day
  | day `elem` ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"] = "It's a weekday."
  | otherwise = "Invalid day"

-- HC4T3 - Task 3: gradeComment using guards
gradeComment :: Int -> String
gradeComment grade
  | grade >= 90 && grade <= 100 = "Excellent!"
  | grade >= 70 && grade <= 89  = "Good job!"
  | grade >= 50 && grade <= 69  = "You passed."
  | grade >= 0  && grade <= 49  = "Better luck next time."
  | otherwise                   = "Invalid grade"

-- HC4T4 - Task 4: specialBirthday using pattern matching
specialBirthday :: Int -> String
specialBirthday 1  = "First birthday – so cute!"
specialBirthday 16 = "Sweet sixteen!"
specialBirthday 18 = "Welcome to adulthood!"
specialBirthday 21 = "Legal in many places!"
specialBirthday 50 = "Half a century old!"
specialBirthday _  = "Happy Birthday!"

-- HC4T5 - Task 5: specialBirthday with catch-all message
specialBirthdayWithAge :: Int -> String
specialBirthdayWithAge 1  = "First birthday – so cute!"
specialBirthdayWithAge 16 = "Sweet sixteen!"
specialBirthdayWithAge 18 = "Welcome to adulthood!"
specialBirthdayWithAge 21 = "Legal in many places!"
specialBirthdayWithAge 50 = "Half a century old!"
specialBirthdayWithAge age = "Happy " ++ show age ++ "th birthday!"

-- HC4T6 - Task 6: whatsInsideThisList using pattern matching
whatsInsideThisList :: [a] -> String
whatsInsideThisList []      = "The list is empty."
whatsInsideThisList [_]     = "The list has one element."
whatsInsideThisList [_, _]  = "The list has two elements."
whatsInsideThisList _       = "The list has many elements."

-- HC4T7 - Task 7: firstAndThird from list
firstAndThird :: [a] -> [a]
firstAndThird (x:_:z:_) = [x, z]
firstAndThird _         = []

-- HC4T8 - Task 8: describeTuple
describeTuple :: (String, Int) -> String
describeTuple (name, age) = name ++ " is " ++ show age ++ " years old."
