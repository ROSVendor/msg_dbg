{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

module Data.ROS.Formattable ( Formattable(..) ) where

class Show a => Formattable a where
  format :: a -> String
  format = show

instance Formattable String where
  format = id

