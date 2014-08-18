
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

