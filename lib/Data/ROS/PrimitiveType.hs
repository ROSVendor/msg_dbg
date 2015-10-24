module Data.ROS.PrimitiveType ( PrimitiveType(..) ) where

import Data.ROS.Formattable 
import Data.Char            ( toLower )

data PrimitiveType = Bool
                   | Int8  
                   | UInt8
                   | Int16 
                   | UInt16
                   | Int32 
                   | UInt32
                   | Int64 
                   | UInt64
                   | Float32
                   | Float64
                   | String
                   | Time
                   | Duration
                   deriving (Eq, Show)

instance Formattable PrimitiveType where
  format = map toLower . show

