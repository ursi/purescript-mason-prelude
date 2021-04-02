{ name = "mason-prelude"
, dependencies =
  [ "arrays"
  , "console"
  , "either"
  , "functions"
  , "integers"
  , "lists"
  , "math"
  , "parallel"
  , "point-free"
  , "prelude"
  , "strings"
  , "tuples"
  , "unfoldable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
, license = "BSD-3-Clause"
, repository = "https://github.com/ursi/purescript-mason-prelude.git"
}
