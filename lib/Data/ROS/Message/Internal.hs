module Data.ROS.Message.Internal where

import Data.ROS.Internal
import Data.ROS.Formattable
import Data.ROS.Message.Definition
import Text.Printf

filedTpLen :: Field -> Int
filedTpLen = length . format . snd

filedsTpLen :: [Field] -> Int
filedsTpLen = maximum . map filedTpLen

fieldFmtStr :: Int -> String
fieldFmtStr = printf "%%-%ds %%s"

fieldFormatter :: String -> Field -> String
fieldFormatter fmt (n, t) = printf fmt (format t) n

formatBy :: (Field -> String) -> Message -> String
formatBy formatter msg = unlines . map formatter $ fields msg

defaultFormatter :: Message -> Field -> String
defaultFormatter = fieldFormatter . fieldFmtStr . filedsTpLen . fields

instance Formattable Message where
  format msg = formatBy (defaultFormatter msg) msg

