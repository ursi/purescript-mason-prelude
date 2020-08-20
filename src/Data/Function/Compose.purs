module Data.Function.Compose where

import Prelude
import Control.Semigroupoid as S

infixl 9 S.compose as <.

infixr 9 S.composeFlipped as .>

compose2 :: ∀ a b c d. (a -> b) -> (c -> d -> a) -> (c -> d -> b)
compose2 f1 f2 c d = f1 $ f2 c d

infixl 9 compose2 as <..

compose2Flipped :: ∀ a b c d. (c -> d -> a) -> (a -> b) -> (c -> d -> b)
compose2Flipped f2 f1 c d = f1 $ f2 c d

infixr 9 compose2Flipped as ..>

compose3 :: ∀ a b c d e. (a -> b) -> (c -> d -> e -> a) -> (c -> d -> e -> b)
compose3 f1 f3 c d e = f1 $ f3 c d e

infixl 9 compose3 as <...

compose3Flipped :: ∀ a b c d e. (c -> d -> e -> a) -> (a -> b) -> (c -> d -> e -> b)
compose3Flipped f3 f1 c d e = f1 $ f3 c d e

infixr 9 compose3Flipped as ...>
