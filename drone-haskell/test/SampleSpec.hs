{-# LANGUAGE OverloadedStrings #-}

module SampleSpec where

import           Test.Hspec
import           Test.Hspec.QuickCheck     (prop)
import           Test.QuickCheck
import           Test.QuickCheck.Instances ()


spec :: Spec
spec = do
    describe "Sample spec" $ do
        it "sample" $ do
            "sample" `shouldBe` "sample"
    describe "Sample prop" $ do
        prop "quickcheck" $ \i -> do
            samplePropertyTest i `shouldBe` i + 1

samplePropertyTest :: Int -> Int
samplePropertyTest i = i + 1
