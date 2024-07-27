module Darts (score) where

score :: Float -> Float -> Int
score x y
    | centreDist <= 1    = 10
    | centreDist <= 5    = 5
    | centreDist <= 10   = 1
    | otherwise          = 0
    where
        centreDist = sqrt ((x * x) + (y * y))
