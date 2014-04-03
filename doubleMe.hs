
takeDoubleFrom x = x + x

simpleSum:: Int -> Int -> Int
simpleSum 0 b = b
simpleSum a b = a + b

sumWithTuple :: (Int , Int) -> Int
sumWithTuple (0, b) = b
sumWithTuple (a, b) = a + b

doubleMe x = x * 2
doubleUs x y = doubleMe x + doubleMe y

doubleIfGreaterThanOne x = if x > 1
                            then doubleMe x
                            else x

concatSomething :: Char -> Char -> Char
concatSomething a b = a++b
