factorial :: Integer -> Integer
factorial n = product [1..n]

lucky :: (Integral a) => a -> String
lucky 7 = "YOU ARE A LUCKY GUY"
lucky x = "TRY AGAIN"

addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

get_first :: (a, b, c) -> a
get_first (a, _, _) = a

tell :: (Show a) => [a] -> String
tell [] = "The list  is empty"
tell (x:[]) = "The list has one element"
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list has more than two elements"

recursiveLength :: (Num b) => [a] -> b
recursiveLength [] = 0
recursiveLength (_:tail) = 1 + recursiveLength tail

asPatterns :: String -> String
asPatterns "" = "Empty string"
asPatterns all@(head:rest) = "The first letter of " ++ all ++ " is " ++ [head]

-- IF YOU DONT USE GUARDS YOU CAN USE PATTERN MATCHING BUT IT IS LIMITED
beforeGuards :: Int -> String 
beforeGuards 1 = "Just one ?"
beforeGuards 2 = "More than one...ok"

-- GUARDS
bmiTell1 :: (RealFloat a) => a -> String  
bmiTell1 bmi  
    | bmi <= 18 = "You're underweight, you emo, you!"  
    | bmi <= 25 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30 = "You're fat! Lose some weight, fatty!"  
    | otherwise   = "You're a whale, congratulations!" 

bmiTell2 :: (RealFloat a) => a -> a -> String
bmiTell2 weight height
    | weight / height ^ 2 <= 18.5 = "You are underweight"
    | weight / height ^ 2 <= 25.0 = "You are normal"
    | weight / height ^ 2 <= 30.0 = "You are fat"
    | otherwise = "You are a whale, congratulations"

-- CAN BE WRITTEN INLINE
m_max :: (Ord a) => a -> a -> a
m_max a b | a > b = a | otherwise = b

-- ORDERING
m_compare :: (Ord a) => a -> a -> a
a `m_compare` b
    | a > b = a
    | a == b = a
    | otherwise = b

-- WHERE
bmiTell3 :: (RealFloat a) => a -> a -> String
bmiTell3 weight height
    | bmi <= skinny = "You are underweight"
    | bmi <= normal = "You are normal"
    | bmi <= fat = "You are fat"
    | otherwise = "You are a whale, congratulations"
    where bmi    = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat    = 30.0


howOldAmI :: (RealFloat edad) => edad -> String
howOldAmI edad
    | edad <= 16 = "Eres muy pequeño"
    | edad <= 18 = "Eres mayor"
    | otherwise = "I dont know"

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstname
          (l:_) = lastname

initialsForFirstName :: String -> String
initialsForFirstName firstName = [f] ++ "."
    where (f:_) = firstName

initialsForManyPeople :: [String] -> [String]
initialsForManyPeople xs = [initialsForFirstName x | x <- xs] 

-- LET IT BE
cylinder :: (RealFloat a) => a -> a -> a
cylinder r h = 
    let sideArea = 2 * pi * r * h
        topArea = pi * r ^2
    in sideArea + 2 * topArea

calcBmis :: (RealFloat a) => [(a, a)] -> [a]
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]


