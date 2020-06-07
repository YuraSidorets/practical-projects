module Main where 
import Data.Number.BigFloat

main :: IO()
type Prec190 = PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (PrecPlus20 (Prec50)))))))
type Decimal190 = BigFloat Prec190

main = do
    n <- getLine
    print(piToN((read n :: Integer)))

piToN :: Integer -> Decimal190
piToN n 
    | n >= 0 = piToN(n - 1) + 16^^(-fromIntegral n) * ((4 / (8 * fromIntegral n + 1)) - (2 / (8 * fromIntegral n + 4)) - (1 / (8 * fromIntegral n + 5)) - (1 / (8 * fromIntegral n + 6)))
    | n < 0 = 0
