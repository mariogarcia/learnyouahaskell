
import System.IO
import System.Directory
import Data.List

addTaskToList = do
    task <- getLine
    appendFile "todo.txt" (task ++ "\n")

deletingItems = do
    contents <- readFile "todo.txt"
    let todoTasks = lines contents
        numberedTasks = zipWith (\n line -> show n ++ " - " ++ line) 
                [0..] todoTasks
    putStrLn "These are your TODO tasks:" 
    mapM_ putStrLn numberedTasks
    putStrLn "Which one do you want to delete ?"
    numberString <- getLine
    let number = read numberString
        newTodoItems = unlines $ delete (todoTasks !! number) todoTasks
    (tempName, tempHandle) <- openTempFile "." "temp"
    hPutStr tempHandle newTodoItems
    hClose tempHandle
    removeFile "todo.txt"
    renameFile tempName "todo.txt"

