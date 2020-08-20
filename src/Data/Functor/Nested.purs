module Data.Functor.Nested where

import Prelude
import Data.Function.Combinators

mmap :: ∀ a b f g. Functor f => Functor g => (a -> b) -> f (g a) -> f (g b)
mmap = map <. map

infixl 4 mmap as <$$>

mmapFlipped :: ∀ a b f g. Functor f => Functor g => f (g a) -> (a -> b) -> f (g b)
mmapFlipped = flip mmap

infixl 1 mmapFlipped as <##>

mmmap :: ∀ a b f g h. Functor f => Functor g => Functor h => (a -> b) -> f (g (h a)) -> f (g (h b))
mmmap = map <. map <. map

infixl 4 mmap as <$$$>

mmmapFlipped :: ∀ a b f g h. Functor f => Functor g => Functor h => f (g (h a)) -> (a -> b) -> f (g (h b))
mmmapFlipped = flip mmmap

infixl 1 mmmapFlipped as <###>
