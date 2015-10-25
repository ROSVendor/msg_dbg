module Data.ROS.Service.Internal where

import Data.ROS.Formattable
import Data.ROS.Message
import Data.ROS.Message.Internal
import Data.ROS.Service.Definition
import Data.List ( intercalate )

import Text.Printf

msgFmtLen :: Message -> Int
msgFmtLen = filedsTpLen . fields

srvFmtLen :: Service -> Int    
srvFmtLen srv =
  let req_len = msgFmtLen $ request  srv
      res_len = msgFmtLen $ response srv
  in  res_len `max` req_len

instance Formattable Service where
  format srv =
    let req = request  srv
        res = response srv
        fmt = fieldFormatter . fieldFmtStr . srvFmtLen $ srv :: Field -> String
        fmg = formatBy fmt
    in  fmg req ++ "===\n" ++ fmg res

