module Main where

import Test.Hspec
import Lib (lineDiff, checkSumSpreadsheet)


main :: IO ()
main = hspec $ do
  describe "lineDiff" $ do
    it "should return the diff between the largest and the smallest number" $ do
      (lineDiff "5 1 9 5") `shouldBe` 8
      (lineDiff "7 5 3") `shouldBe` 4
      (lineDiff "2 4 6 8") `shouldBe` 6
  describe "checkSumSpreadsheet" $ do
    it "should return a sum of all lines" $ do
      (checkSumSpreadsheet "5 1 9 5\n 7 5 3\n 2 4 6 8") `shouldBe` 18
