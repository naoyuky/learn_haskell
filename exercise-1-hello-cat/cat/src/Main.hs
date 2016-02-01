module Main where

main :: IO ()
main = do
  putStrLn "Cat:Imput String"
  str <- getLine
  putStrLn str
