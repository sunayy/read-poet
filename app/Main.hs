{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE DeriveGeneric #-}

module Main where

import Lib
import System.Environment (getArgs)
import GHC.Generics
import System.IO
import Data.Aeson
import Data.ByteString.Lazy as B

data Poet = Poet { author :: String, title :: String } deriving (Show, Generic)

instance FromJSON Poet

main :: IO ()
main = do
  d <- (eitherDecode <$> getJson) :: IO (Either String [Poet])
  case d of
    Left err ->  print err
    Right pts -> print pts