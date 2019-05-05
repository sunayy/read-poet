module Lib
    ( getJson
    ) where

import System.IO
import Data.ByteString.Lazy as B

getJson :: IO B.ByteString
getJson = B.readFile "/path/to/poets.json"