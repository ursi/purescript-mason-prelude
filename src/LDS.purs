--| Linear Data Structure
module LDS where

import Prelude
import Data.Array as Array
import Data.Function.Combinators
import Data.Maybe (Maybe(..))
import Data.List (List(..))
import Data.List as List
import Data.Tuple.Nested (type (/\), (/\))

class LDS l where
  cons :: ∀ a. a -> l a -> l a
  uncons :: ∀ a. l a -> Maybe (a /\ l a)
  index :: ∀ a. l a -> Int -> Maybe a
  range :: Int -> Int -> l Int

infixl 8 index as !!

infix 8 range as ..

infixr 6 cons as :

instance ldsArray :: LDS Array where
  cons = Array.cons
  uncons = Array.uncons .> map \{ head, tail } -> head /\ tail
  index = Array.index
  range = Array.range

instance ldsList :: LDS List where
  cons = Cons
  uncons = List.uncons .> map \{ head, tail } -> head /\ tail
  index = List.index
  range = List.range
