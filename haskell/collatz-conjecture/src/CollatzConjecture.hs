module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer

collatz n
    | n <= 0    = Nothing
    | otherwise = Just (collatzPositive n)

collatzPositive :: Integer -> Integer
collatzPositive 1 = 0
collatzPositive n
    | mod n 2 == 0  = 1 + collatzPositive (div n 2)
    | otherwise     = 1 + collatzPositive (3 * n + 1)