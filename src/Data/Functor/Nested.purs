module Data.Functor.Nested where

import Prelude
import Data.Function.Combinators

mmap :: ∀ a b f g. Functor f => Functor g => (a -> b) -> f (g a) -> f (g b)
mmap = map <. map

infixl 4 mmap as <$$>

mmmap :: ∀ a b f g h. Functor f => Functor g => Functor h => (a -> b) -> f (g (h a)) -> f (g (h b))
mmmap = map <. map <. map

infixl 4 mmap as <$$$>
