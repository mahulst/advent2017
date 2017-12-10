module Lib
    ( inverseCaptcha, digits
    ) where

inverseCaptcha :: String -> Int
inverseCaptcha num =
  let
      list = map (\a -> (read::String->Int) [a]) num
  in
    addRecurringInts 0 (last list) list

digits :: Int -> [Int]
digits n = map (\x -> read [x] :: Int) (show n)

addRecurringInts :: Int -> Int -> [Int] -> Int
addRecurringInts total previousInt [] = total
addRecurringInts total previousInt (x:xs) =
  if previousInt == x
    then addRecurringInts (total + previousInt) x xs
    else addRecurringInts total x xs

