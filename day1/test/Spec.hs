module Main where

import Test.Hspec
import Lib (inverseCaptcha)


main :: IO ()
main = hspec $ do
  describe "inverse captcha" $ do
    it "should add recurring digits" $ do
      (inverseCaptcha "1122") `shouldBe` 3
    it "should add recurring digits multiple times" $ do
      (inverseCaptcha "1111") `shouldBe` 4
    it "should start with 0" $ do
      (inverseCaptcha "1234") `shouldBe` 0
    it "should also add first and last digit" $ do
      (inverseCaptcha "91212129") `shouldBe` 9
