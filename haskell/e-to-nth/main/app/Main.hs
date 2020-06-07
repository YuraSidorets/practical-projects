module Main where

import Lib

main :: IO()
main = do
    n <- getLine
    k <- getLine
    let x = read n :: Integer
    let y = read k :: Integer
    print $ eToN x y