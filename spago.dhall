{ name = "mason-prelude"
, dependencies =
  [ "arrays"
  , "debuggest"
  , "either"
  , "functions"
  , "generics-rep"
  , "integers"
  , "lists"
  , "math"
  , "parallel"
  , "point-free"
  , "prelude"
  , "tuples"
  , "unfoldable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, license = "BSD-3-Clause"
, repository = "https://github.com/ursi/purescript-mason-prelude.git"
}
