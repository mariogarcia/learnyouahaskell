
import System.IO

main = do
    handle <- openFile "baby.hs" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle

main2 = 
    withFile "baby.hs" ReadMode (\handle -> do
        contents <- hGetContents handle
        putStr contents
    )

