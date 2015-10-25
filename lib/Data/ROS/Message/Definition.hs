module Data.ROS.Message.Definition where

import Data.ROS.Internal
import Data.ROS.PrimitiveType

type Field = (Name, PrimitiveType)
data Message = Message { name   :: Name
                       , fields :: [Field] }
    deriving (Eq, Show)

