--| Linear Data Structure
module LDS where

import Prelude
import Data.Array as Array
import Data.CatList (CatList)
import Data.CatList as CatList
import Data.Foldable (class Foldable, foldl)
import Data.Function.Combinators
import Data.Maybe (Maybe(..))
import Data.List (List(..))
import Data.List as List
import Data.Tuple.Nested (type (/\), (/\))

-- purty sux
class
  (Applicative l, Foldable l) <= LDS l where
  cons :: ∀ a. a -> l a -> l a
  uncons :: ∀ a. l a -> Maybe (a /\ l a)
  index :: ∀ a. l a -> Int -> Maybe a
  range :: Int -> Int -> l Int
  difference :: ∀ a. Eq a => l a -> l a -> l a

infixl 8 index as !!

infix 8 range as ..

infixr 6 cons as :

infix 5 difference as \\

instance ldsArray :: LDS Array where
  cons = Array.cons
  uncons = Array.uncons .> map \{ head, tail } -> head /\ tail
  index = Array.index
  range = Array.range
  difference = Array.difference

instance ldsCatList :: LDS CatList where
  cons = CatList.cons
  uncons = CatList.uncons
  index l = indexDefault l
  range i = rangeDefault i
  difference l = differenceDefault l

instance ldsList :: LDS List where
  cons = Cons
  uncons = List.uncons .> map \{ head, tail } -> head /\ tail
  index = List.index
  range = List.range
  difference = List.difference

indexDefault :: ∀ a l. LDS l => l a -> Int -> Maybe a
indexDefault l i =
  uncons l
    >>= \(head /\ tail) ->
        if i == 0 then pure head else l !! (i - 1)

deleteBy :: ∀ a l. Monoid (l a) => LDS l => (a -> a -> Boolean) -> a -> l a -> l a
deleteBy eq' a lds = case uncons lds of
  Just (head /\ tail)
    | eq' a head -> deleteBy eq' a tail
    | otherwise -> head : deleteBy eq' a tail
  Nothing -> mempty

delete :: ∀ a l. Eq a => Monoid (l a) => LDS l => a -> l a -> l a
delete = deleteBy eq

differenceDefault :: ∀ a l. Eq a => Monoid (l a) => LDS l => l a -> l a -> l a
differenceDefault = foldl $ flip delete

rangeDefault :: ∀ l. LDS l => Int -> Int -> l Int
rangeDefault a b =
  let
    step = if a < b then 1 else -1
  in
    go step a b
  where
  go :: Int -> Int -> Int -> l Int
  go step c d =
    if c == d then
      pure c
    else
      c : go step (c + step) d
