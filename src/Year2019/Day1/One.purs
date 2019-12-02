module Year2019.Day1.One where

import Control.Bind (bind)
import Data.Array (foldl)
import Data.Field ((+), (/))
import Data.Function (($))
import Data.Int (floor, toNumber)
import Data.Maybe (Maybe(..))
import Data.Ring ((-))
import Data.Show (show)
import Data.Unit (Unit)
import Effect (Effect)
import Effect.Class.Console (log)
import Util.Input (readInput)
import Util.Parse (parseInt10)

main :: Effect Unit
main = do
  inp <- readInput "inputs/1/1"
  log $ show $ foldl fuelReader 0 inp

fuelReader :: Int -> String -> Int
fuelReader prev str = case parseInt10 str of
  Nothing -> prev
  Just curr -> fuel curr + prev

fuel :: Int -> Int
fuel mass = floor (toNumber mass / 3.0) - 2
