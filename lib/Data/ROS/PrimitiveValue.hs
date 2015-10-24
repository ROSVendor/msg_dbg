module Data.ROS.PrimitiveValue ( PrimitiveValue(..) ) where

import qualified Prelude   as P
import qualified Data.Int  as I
import qualified Data.Word as W

data PrimitiveValue = Bool     P.Bool
                    | Int8     I.Int8
                    | UInt8    W.Word8
                    | Int16    I.Int16
                    | UInt16   W.Word16
                    | Int32    I.Int32
                    | UInt32   W.Word32
                    | Int64    I.Int64
                    | UInt64   W.Word64
                    | Float32  P.Float
                    | Float64  P.Double
                    | String   P.String
                    | Time     W.Word32
                    | Duration I.Int32
                    deriving (P.Eq, P.Show)

