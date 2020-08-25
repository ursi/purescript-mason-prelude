module MasonPrelude
  ( module Exports
  , (%)
  , (^)
  ) where

import Prelude as Exports
import Prelude (mod)
import Data.Either (Either(..)) as Exports
import Data.Either.Nested (type (\/)) as Exports
import Data.Foldable (class Foldable, fold, foldl, foldMap, foldr, intercalate, sequence_, traverse_) as Exports
import Data.FoldableWithIndex (class FoldableWithIndex, foldlWithIndex, foldMapWithIndex, foldrWithIndex) as Exports
import Data.Function.Combinators as Exports
import Data.Functor.Nested as Exports
import Data.FunctorWithIndex (class FunctorWithIndex, mapWithIndex) as Exports
import Data.List.Types (List(..)) as Exports
import Data.Maybe (Maybe(..), fromMaybe, maybe) as Exports
import Data.Traversable (class Traversable, traverse, sequence) as Exports
import Data.TraversableWithIndex (class TraversableWithIndex, traverseWithIndex) as Exports
import Data.Tuple (fst, snd) as Exports
import Data.Tuple.Nested (type (/\), (/\)) as Exports
import Data.Unfoldable (class Unfoldable, unfoldr) as Exports
import Debug (todo) as Exports
import Effect (Effect) as Exports
import Effect.Class as Exports
import Effect.Uncurried as Exports
import Effect.Unsafe as Exports
import Math (pow)
import Unsafe.Coerce as Exports

infixl 7 mod as %

infixl 8 pow as ^
