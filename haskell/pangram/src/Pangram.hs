module Pangram (isPangram) where

import Data.Char(toLower)

isPangram :: String -> Bool
isPangram text = findAllLetters text ['a'..'z']

removeLetter :: Char -> [Char] -> [Char]
removeLetter _ []   = []
removeLetter x (y:ys)
    | x == y        = removeLetter y ys
    | otherwise     = [y] ++ removeLetter x ys

findAllLetters :: String -> String -> Bool
findAllLetters _ []             = True
findAllLetters (x:xs) abcList   = findAllLetters xs (removeLetter (toLower x) abcList)
findAllLetters _ _              = False