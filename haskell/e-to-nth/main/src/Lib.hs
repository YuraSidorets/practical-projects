module Lib
       (eToN) where
import Data.Number.BigFloat
type Prec190 = PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (Prec50)))))))
type Decimal190 = BigFloat Prec190

eToN :: Integer -> Integer -> Decimal190
eToN n k
    | n >= 0 = (eToN(n - 1) k) + ((fromIntegral k ^ fromIntegral n) / (fact n))
    | n < 0 = 0

fact 0 = 1
fact n = fact (n - 1) * fromIntegral n