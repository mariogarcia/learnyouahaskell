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

usingform = do
    colors <- forM [1..4] (\a -> do
        putStrLn $ "Which color do you associate to the number " ++ show a ++ "?" 
        color <- getLine 
        return color)
    putStrLn "The colors that you associated with 1, 2, 3, 4 are: "
    mapM_ putStrLn colors
    
usinggetcontents = do
    contents <- getContents
    putStr $ map toUpper contents

usinggetcontents2 = do
    contents <- getContents
    putStr (shortLinesOnly contents)

shortLinesOnly :: String -> String
shortLinesOnly = unlines . filter  (\line -> length line  < 10 ) . lines

usinggetcontents3 = interact shortLinesOnly

respondPalindromes :: String -> String
respondPalindromes = 
    unlines .
    map (\xs -> if isPal xs then "palindrome" else "not a palindrome") .
    lines

isPal :: String -> Bool
isPal xs = xs == reverse xs

tellmeifpalindrome = interact respondPalindromes
