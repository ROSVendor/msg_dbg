module Data.ROS.Service.Definition where

import Data.ROS.Internal
import Data.ROS.Message
import Data.ROS.Formattable


data Service = Service { name     :: Name
                       , request  :: Message
                       , response :: Message }
    deriving (Eq, Show)

