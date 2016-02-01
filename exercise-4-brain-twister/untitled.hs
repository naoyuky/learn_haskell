import System.IO

wordreverse :: [Char] -> [Char]
wordreverse xs = do
    take 1 xs ++ (reverse $ drop 1 (take ((length xs) - 1) xs )) ++ drop (length xs -1) xs

main :: IO ()
main = 
    strings <- getLine
    putStrLn $unwords $map wordreverse $words strings
    f<- isEOF
    if f then return() else main