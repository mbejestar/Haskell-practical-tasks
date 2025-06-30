- HC7T1: Eq instance for Color
data Color = Red | Green | Blue deriving (Show, Read, Bounded, Enum)

instance Eq Color where
  Red   == Red   = True
  Green == Green = True
  Blue  == Blue  = True
  _     == _     = False

-- HC7T2: Ord instance for Color
instance Ord Color where
  compare Red Green  = LT
  compare Red Blue   = LT
  compare Green Blue = LT
  compare x y
    | x == y    = EQ
    | otherwise = GT

-- HC7T3: compareValues with Eq and Ord
compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues x y = if x >= y then x else y

-- HC7T4: Shape with Show and Read
data Shape = Circle Double | Rectangle Double Double

instance Show Shape where
  show (Circle r)           = "Circle " ++ show r
  show (Rectangle w h)      = "Rectangle " ++ show w ++ " " ++ show h

instance Read Shape where
  readsPrec _ input = case words input of
    ("Circle":r:[])            -> [(Circle (read r), "")]
    ("Rectangle":w:h:[])       -> [(Rectangle (read w) (read h), "")]
    _                          -> []

-- HC7T5: squareArea with Num constraint
squareArea :: Num a => a -> a
squareArea side = side * side

-- HC7T6: circleCircumference with Integral and Floating
circleCircumference :: (Real a, Floating b) => a -> b
circleCircumference r = 2 * pi * realToFrac r

-- HC7T7: nextColor using Bounded and Enum
nextColor :: Color -> Color
nextColor c
  | c == maxBound = minBound
  | otherwise     = succ c

-- HC7T8: parseShape using Read
parseShape :: String -> Maybe Shape
parseShape s = case reads s of
  [(shape, "")] -> Just shape
  _             -> Nothing

-- HC7T9: Describable type class
class Describable a where
  describe :: a -> String

instance Describable Bool where
  describe True  = "This is True"
  describe False = "This is False"

instance Describable Shape where
  describe (Circle r)        = "A circle with radius " ++ show r
  describe (Rectangle w h)   = "A rectangle of width " ++ show w ++ " and height " ++ show h

-- HC7T10: describeAndCompare with multiple constraints
describeAndCompare :: (Ord a, Describable a) => a -> a -> String
describeAndCompare x y = describe (compareValues x y)
