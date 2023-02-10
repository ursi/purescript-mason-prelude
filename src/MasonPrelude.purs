module MasonPrelude
  ( module Exports
  , (%)
  , (^)
  , fromChar
  ) where

import Prelude as Exports
import Control.Alt (class Alt, (<|>)) as Exports
import Control.Apply (lift2, lift3, lift4, lift5) as Exports
import Control.Parallel
  ( parApply
  , parOneOf
  , parOneOfMap
  , parSequence
  , parSequence_
  , parTraverse
  , parTraverse_
  )
  as Exports
import Data.Either (Either(..)) as Exports
import Data.Either.Nested (type (\/)) as Exports
import Data.Foldable
  ( class Foldable
  , fold
  , foldl
  , foldMap
  , foldr
  , intercalate
  , sequence_
  , traverse_
  )
  as Exports
import Data.FoldableWithIndex
  ( class FoldableWithIndex
  , foldlWithIndex
  , foldMapWithIndex
  , foldrWithIndex
  )
  as Exports
import Data.Function.Uncurried as Exports
import Data.FunctorWithIndex (class FunctorWithIndex, mapWithIndex) as Exports
import Data.Generic.Rep (class Generic) as Exports
import Data.Int (ceil, floor, round, toNumber) as Exports
import Data.List (List(..)) as Exports
import Data.Maybe (Maybe(..), fromMaybe, maybe) as Exports
import Data.Nullable (Nullable) as Exports
import Data.Show.Generic (genericShow) as Exports
import Data.String (toLower, toUpper) as Exports
import Data.String.CodeUnits (fromCharArray, toCharArray) as Exports
import Data.Traversable (class Traversable, traverse, sequence) as Exports
import Data.TraversableWithIndex (class TraversableWithIndex, traverseWithIndex) as Exports
import Data.Tuple (Tuple(..), curry, fst, snd, uncurry) as Exports
import Data.Tuple.Nested (type (/\), (/\)) as Exports
import Data.Unfoldable (class Unfoldable, unfoldr) as Exports
import Debug (todo, debugger) as Exports
import Effect (Effect) as Exports
import Effect.Class as Exports
import Effect.Class.Console (log, logShow) as Exports
import Effect.Exception (throw) as Exports
import Effect.Exception.Unsafe (unsafeThrow) as Exports
import Effect.Uncurried as Exports
import Effect.Unsafe (unsafePerformEffect) as Exports
import MasonPrelude.Functor.Nested as Exports
import MasonPrelude.Parallel as Exports
import PointFree as Exports
import Safe.Coerce as Exports
import Unsafe.Coerce (unsafeCoerce) as Exports
import Type.Proxy (Proxy(..)) as Exports

import Data.String.CodeUnits as CU
import Data.Number (pow)
import Prelude (mod)

infixl 7 mod as %

infixl 8 pow as ^

fromChar :: Char -> String
fromChar = CU.singleton
