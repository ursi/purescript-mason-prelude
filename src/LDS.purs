module LDS where

import Prelude
import Data.Array as Array
import Data.Foldable (class Foldable)
import Data.Maybe (Maybe)
import Data.List (List(..))
import Data.List as List
import Data.Unfoldable (class Unfoldable)

-- Linear Data Structure
class LDS f where
  cons :: ∀ a. a -> f a -> f a
  index :: ∀ a. f a -> Int -> Maybe a
  range :: Int -> Int -> f Int

infixl 8 index as !!

infix 8 range as ..

infixr 6 cons as :

instance ldsArray :: LDS Array where
  cons = Array.cons
  index = Array.index
  range = Array.range

instance ldsList :: LDS List where
  cons = Cons
  index = List.index
  range = List.range
