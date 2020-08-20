module Data.Function.Compose where

import Control.Semigroupoid as S

infixl 9 S.compose as <.

infixr 9 S.composeFlipped as .>

compose2 :: ∀ a b c d. (a -> b) -> (c -> d -> a) -> c -> d -> b
compose2 f1 f2 c d = f1 (f2 c d)

infixl 9 compose2 as <..

compose2Flipped :: ∀ a b c d. (c -> d -> a) -> (a -> b) -> c -> d -> b
compose2Flipped f2 f1 c d = f1 (f2 c d)

infixr 9 compose2Flipped as ..>

compose3 :: ∀ a b c d e. (a -> b) -> (c -> d -> e -> a) -> c -> d -> e -> b
compose3 f1 f3 c d e = f1 (f3 c d e)

infixl 9 compose3 as <...

compose3Flipped :: ∀ a b c d e. (c -> d -> e -> a) -> (a -> b) -> c -> d -> e -> b
compose3Flipped f3 f1 c d e = f1 (f3 c d e)

infixr 9 compose3Flipped as ...>

compose4 :: ∀ a b c d e f. (a -> b) -> (c -> d -> e -> f -> a) -> c -> d -> e -> f -> b
compose4 f1 f4 c d e f = f1 (f4 c d e f)

infixl 9 compose4 as <....

compose4Flipped :: ∀ a b c d e f. (c -> d -> e -> f -> a) -> (a -> b) -> c -> d -> e -> f -> b
compose4Flipped f4 f1 c d e f = f1 (f4 c d e f)

infixr 9 compose4Flipped as ....>

composeSecond :: ∀ a b c d. (c -> b -> a) -> (d -> b) -> c -> d -> a
composeSecond f2 f1 c = f2 c <. f1

infixl 9 composeSecond as <~.

composeSecondFlipped :: ∀ a b c d. (d -> b) -> (c -> b -> a) -> c -> d -> a
composeSecondFlipped f1 f2 c = f1 .> f2 c

infixr 9 composeSecondFlipped as ~.>

composeThird :: ∀ a b c d e. (c -> d -> b -> a) -> (e -> b) -> c -> d -> e -> a
composeThird f3 f1 c d = f3 c d <. f1

infixl 9 composeThird as <~~.

composeThirdFlipped :: ∀ a b c d e. (e -> b) -> (c -> d -> b -> a) -> c -> d -> e -> a
composeThirdFlipped f1 f3 c d = f1 .> f3 c d

infixr 9 composeThirdFlipped as ~~.>

composeFourth :: ∀ a b c d e f. (c -> d -> e -> b -> a) -> (f -> b) -> c -> d -> e -> f -> a
composeFourth f4 f1 c d e = f4 c d e <. f1

infixl 9 composeFourth as <~~~.

composeFourthFlipped :: ∀ a b c d e f. (f -> b) -> (c -> d -> e -> b -> a) -> c -> d -> e -> f -> a
composeFourthFlipped f1 f4 c d e = f1 .> f4 c d e

infixr 9 composeFourthFlipped as ~~~.>

compose2Second :: ∀ a b c d e. (c -> b -> a) -> (d -> e -> b) -> c -> d -> e -> a
compose2Second f2 f2' c = f2 c <.. f2'

infixl 9 compose2Second as <~..

compose2SecondFlipped :: ∀ a b c d e. (d -> e -> b) -> (c -> b -> a) -> c -> d -> e -> a
compose2SecondFlipped f2 f2' c = f2 ..> f2' c

infixr 9 compose2SecondFlipped as ~..>

compose2Third :: ∀ a b c d e f. (c -> d -> b -> a) -> (e -> f -> b) -> c -> d -> e -> f -> a
compose2Third f3 f2 c d = f3 c d <.. f2

infixl 9 compose2Third as <~~..

compose2ThirdFlipped :: ∀ a b c d e f. (e -> f -> b) -> (c -> d -> b -> a) -> c -> d -> e -> f -> a
compose2ThirdFlipped f2 f3 c d = f2 ..> f3 c d

infixr 9 compose2ThirdFlipped as ~~..>

compose3Second :: ∀ a b c d e f. (c -> b -> a) -> (d -> e -> f -> b) -> c -> d -> e -> f -> a
compose3Second f2 f3 c = f2 c <... f3

infixl 9 compose3Second as <~...

compose3SecondFlipped :: ∀ a b c d e f. (d -> e -> f -> b) -> (c -> b -> a) -> c -> d -> e -> f -> a
compose3SecondFlipped f3 f2 c = f3 ...> f2 c

infixl 9 compose3SecondFlipped as ~...>
