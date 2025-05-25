{- 
 -- The Glorious Glasgow Haskell Compilation System, version 9.4.8
 -- 0001multiples_of_3_or_5.hs
 -- 
 -- Copyright 2025 @GitHub JoergEm
 -- 
 -- This program is WITHOUT ANY WARRANTY; without even the implied
 -- warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
  -}

summe :: Integer -> Integer -> Integer
summe n limit =
  let k = limit `div` n
  in n * k * (k + 1) `div` 2

main :: IO ()
main = print $ summe 3 999 + summe 5 999 - summe 15 999