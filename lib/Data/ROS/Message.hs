module Data.ROS.Message ( Message(..) ) where

import Data.ROS.Internal
import Data.ROS.PrimitiveType
import Data.ROS.Formattable
import Text.Printf

data Message = Message Name [(Name, PrimitiveType)] deriving (Eq, Show)

instance Formattable Message where
  format (Message _ xs) =
    let tp_len = maximum $ map (length . format . snd) xs
        fmt    = printf "%%-%ds %%s" tp_len :: String
    in  unlines $ map (\(n,t) -> printf fmt (format t) n) xs
    


