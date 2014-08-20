
doubleMe x = x + x
doubleUs x y = x * 2 + y * 2

doubleIfSmall x = 
    if (x < 10) then 
        doubleMe x 
        else x

remove_non_uppercase st = [c | c <- st ,c `elem` ['A'..'Z']]

factorial :: Integer -> Integer
factorial n = product [1..n]

circumference :: Float -> Float
circumference r = 2 * pi * r

tell_me :: Int -> String
tell_me 1 = "Uno"
tell_me 2 = "Dos"
tell_me x = "El numero es raro" 

add_vectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
add_vectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

middleValue :: (Int, Int, Int) -> Int
middleValue (_, x, _) = x

head' :: [a] -> a
head' [] = error "error"
head' (x:_) = x

tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "This list only has one item: " ++ show x
tell (x:y:[]) = "The list only has two items: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list has more than two items"

firstLetter :: String -> String
firstLetter "" = "Empty string"
firstLetter all@(x:xs) = "First letter of " ++ all ++ " is " ++ [x]

bmiTell :: Double -> String
bmiTell bmi
    | bmi <= 18 = "A"
    | bmi <= 20 = "B"
    | bmi <= 50 = "C"
    | otherwise = "D"

letitbe :: Int -> Int
letitbe x = 
    let a = 2 
        b = 3
    in x + a + b

