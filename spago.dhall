{ name = "mason-prelude"
, dependencies =
  [ "arrays"
  , "debug"
  , "either"
  , "lists"
  , "math"
  , "prelude"
  , "tuples"
  , "unfoldable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
