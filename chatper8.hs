-- Combined Haskell code for all tasks, select one by uncommenting

module Main where

-- -------------------------------------------
-- HC8T1
{-
type Address = String
type Value = Int

generateTx :: Address -> Address -> Value -> String
generateTx from to amount = "From: " ++ from ++ ", To: " ++ to ++ ", Amount: " ++ show amount

main :: IO ()
main = do
    let txStr = generateTx "Alice" "Bob" 50
    putStrLn txStr
-}

-- -------------------------------------------
-- HC8T2
{-
data PaymentMethod = Cash | Card | Cryptocurrency deriving (Show)

data Person = Person {
    name :: String,
    address :: (String, Int),
    paymentMethod :: PaymentMethod
} deriving (Show)

bob :: Person
bob = Person {
    name = "Bob",
    address = ("123 Elm Street", 456),
    paymentMethod = Cash
}

main :: IO ()
main = do
    putStrLn $ "Person: " ++ show bob
-}

-- -------------------------------------------
-- HC8T3
{-
data Shape = Circle Float | Rectangle Float Float deriving (Show)

area :: Shape -> Float
area (Circle r) = pi * r * r
area (Rectangle w h) = w * h

main :: IO ()
main = do
    let circleArea = area (Circle 5)
    let rectArea = area (Rectangle 10 5)
    putStrLn $ "Circle area (radius 5): " ++ show circleArea
    putStrLn $ "Rectangle area (10x5): " ++ show rectArea
-}

-- -------------------------------------------
-- HC8T4
{-
data Employee = Employee {
    nameE :: String,
    experienceInYears :: Float
} deriving (Show)

richard :: Employee
richard = Employee {
    nameE = "Richard",
    experienceInYears = 7.5
}

main :: IO ()
main = do
    putStrLn $ "Employee: " ++ show richard
-}

-- -------------------------------------------
-- HC8T5
{-
data PersonRec = PersonRec {
    personName :: String,
    age :: Int,
    isEmployed :: Bool
} deriving (Show)

person1 :: PersonRec
person1 = PersonRec {
    personName = "Alice",
    age = 30,
    isEmployed = True
}

person2 :: PersonRec
person2 = PersonRec {
    personName = "Bob",
    age = 25,
    isEmployed = False
}

main :: IO ()
main = do
    putStrLn $ "Person1: " ++ show person1
    putStrLn $ "Person2: " ++ show person2
-}

-- -------------------------------------------
-- HC8T6
{-
data Shape = CircleShape {
    center :: (Float, Float),
    color :: String,
    radius :: Float
} | RectangleShape {
    center :: (Float, Float),
    color :: String,
    width :: Float,
    height :: Float
} deriving (Show)

circleInstance :: Shape
circleInstance = CircleShape (0,0) "red" 10

rectangleInstance :: Shape
rectangleInstance = RectangleShape (5,5) "blue" 20 10

main :: IO ()
main = do
    putStrLn $ "Circle shape: " ++ show circleInstance
    putStrLn $ "Rectangle shape: " ++ show rectangleInstance
-}

-- -------------------------------------------
-- HC8T7
{-
data Animal = Dog String | Cat String deriving (Show)

describeAnimal :: Animal -> String
describeAnimal (Dog name) = "Dog named " ++ name
describeAnimal (Cat name) = "Cat named " ++ name

dog :: Animal
dog = Dog "Rex"

cat :: Animal
cat = Cat "Whiskers"

main :: IO ()
main = do
    putStrLn $ describeAnimal dog
    putStrLn $ describeAnimal cat
-}

-- -------------------------------------------
-- HC8T8
{-
type Name = String
type Age = Int

greet :: Name -> Age -> String
greet n a = "Hello " ++ n ++ "! You are " ++ show a ++ " years old."

main :: IO ()
main = do
    putStrLn $ greet "Alice" 30
-}

-- -------------------------------------------
-- HC8T9
{-
type Address = String
type Value = Int
type TransactionId = String

data Transaction = Transaction {
    from :: Address,
    to :: Address,
    amount :: Value,
    transactionId :: TransactionId
} deriving (Show)

createTransaction :: Address -> Address -> Value -> String -> Transaction
createTransaction fromAddr toAddr amt txId = Transaction {
    from = fromAddr,
    to = toAddr,
    amount = amt,
    transactionId = txId
}

main :: IO ()
main = do
    let tx = createTransaction "Addr1" "Addr2" 100 "TX123"
    putStrLn $ "Transaction: " ++ show tx
-}

-- -------------------------------------------
-- HC8T10
{-
data Book = Book {
    title :: String,
    author :: String,
    year :: Int
} deriving (Show)

myBook :: Book
myBook = Book {
    title = "The Great Gatsby",
    author = "F. Scott Fitzgerald",
    year = 1925
}

main :: IO ()
main = do
    putStrLn $ "Book: " ++ show myBook
-}
