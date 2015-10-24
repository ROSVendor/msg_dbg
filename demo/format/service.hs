module Main where

import Control.Monad

import Data.ROS.Message
import Data.ROS.Service
import Data.ROS.PrimitiveType
import Data.ROS.Formattable

arg = Message "arg" [ ("foo", Int32)
                    , ("bar", String) ]

rtv = Message "rtv" [ ("baz", Bool) ]

srv = Service "srv" arg rtv

main :: IO ()
main = putStrLn . format $ srv

