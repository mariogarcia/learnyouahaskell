import Data.Char
import Control.Monad

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

inreverse = do
    line <- getLine
    if null line 
        then return ()
        else do
            putStrLn $ reverseWords line
            inreverse 

reverseWords :: String -> String
reverseWords = unwords . map reverse . words

returnisfunny = do
    a <- return "a"
    b <- return "b"
    c <- getLine
    putStrLn (a ++ b ++ c)

usingwhen = do
    value <- getLine
    when (value == "lala") $ do
        putStrLn value

notusingwhen = do
    value <- getLine 
    if (value == "lala")
        then putStrLn value
        else return ()

notusingsequence = do
    a <- getLine
    b <- getLine
    c <- getLine 
    print [a,b,c]

usingsequence = do
    rs <- sequence [getLine, getLine, getLine]
    print rs
