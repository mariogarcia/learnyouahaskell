import Data.Char

main = do
    putStrLn "Hello, What is your name?"
    name <- getLine
    putStrLn ("Hey" ++ name ++ ", you rock!!")

notmain = do
    putStrLn "Tell me your age"
    age <- getLine
    putStrLn "And now your name"
    name <- getLine
    let upperName = map toUpper name 
    let message = "Well " ++ name ++ " although you are " ++ age ++ " you are not that bad"
    putStrLn message
