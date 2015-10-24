module Data.ROS.Service ( Service(..) ) where

import Data.List ( intercalate )

import Data.ROS.Internal
import Data.ROS.Message
import Data.ROS.Formattable


data Service = Service Name Message Message deriving (Eq, Show)

instance Formattable Service where
  format (Service _ arg rtv) =
    intercalate "===\n" $ map format [arg, rtv]

