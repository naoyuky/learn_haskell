module Main where

main :: IO ()
main = do
  interact (\x -> x) "hello world"
