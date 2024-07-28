module Bob (responseFor) where
import Data.Char(isLower, isUpper, isSpace)

responseFor :: String -> String
responseFor text
    | noSpaceText == ""                                 = "Fine. Be that way!"
    | isYelling noSpaceText && (isQuestion noSpaceText) = "Calm down, I know what I'm doing!"
    | isYelling noSpaceText                             = "Whoa, chill out!"
    | isQuestion noSpaceText                            = "Sure."
    | otherwise                                         = "Whatever."
    where noSpaceText = removeSpace text

isQuestion :: String -> Bool
isQuestion ""       = False
isQuestion "?"      = True
isQuestion (x:xs)   = isQuestion xs

isYelling :: String -> Bool
isYelling text = (all (not.isLower) text) && any isUpper text

removeSpace :: String -> String
removeSpace ""  = ""
removeSpace (x:xs)
    | isSpace x = removeSpace xs
    | otherwise = [x] ++ (removeSpace xs)