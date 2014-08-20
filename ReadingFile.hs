
import System.IO

readFileByName = do
    handle <- openFile "IOFirstSample.hs" ReadMode
    contents <- hGetContents handle
    putStr contents
    hClose handle

readFileByNameEasier = do
    withFile "IOFirstSample.hs" ReadMode (\handle -> do
        contents <- hGetContents handle
        putStr contents)
