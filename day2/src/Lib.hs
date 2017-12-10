{-# LANGUAGE OverloadedStrings #-}

module Lib
    ( lineDiff, checkSumSpreadsheet
    ) where

import Data.List.Split
import qualified Data.Text as T

checkSumSpreadsheet :: String -> Int
checkSumSpreadsheet input =
  let
      lines =  splitOn "\n" input
      listOfDiffs = fmap lineDiff lines
  in
    sum listOfDiffs

lineDiff :: String -> Int
lineDiff line =
    let
      numbers = splitOn " " (T.unpack (T.strip (T.pack line)))
      ints = map (read::String -> Int) numbers
      min = minimum ints
      max = maximum ints
    in
      max - min


