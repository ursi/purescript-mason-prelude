module MasonPrelude.Parallel where

import Prelude
import Control.Apply (lift2, lift3, lift4, lift5)
import Control.Parallel (class Parallel, parallel, sequential)

parLift2 :: ∀ a b c g m. Parallel g m => (a -> b -> c) -> m a -> m b -> m c
parLift2 f ma mb = lift2 f (parallel ma) (parallel mb) # sequential

parLift3 :: ∀ a b c d g m. Parallel g m => (a -> b -> c -> d) -> m a -> m b -> m c -> m d
parLift3 f ma mb mc = lift3 f (parallel ma) (parallel mb) (parallel mc) # sequential

parLift4 ::
  ∀ a b c d e g m.
  Parallel g m =>
  (a -> b -> c -> d -> e) ->
  m a -> m b -> m c -> m d -> m e
parLift4 f ma mb mc md =
  lift4 f
    (parallel ma)
    (parallel mb)
    (parallel mc)
    (parallel md)
    # sequential

parLift5 ::
  ∀ a b c d e f g m.
  Parallel g m =>
  (a -> b -> c -> d -> e -> f) ->
  m a -> m b -> m c -> m d -> m e -> m f
parLift5 f ma mb mc md me =
  lift5 f
    (parallel ma)
    (parallel mb)
    (parallel mc)
    (parallel md)
    (parallel me)
    # sequential
