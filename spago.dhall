{ name = "mason-prelude"
, dependencies =
  [ "arrays"
  , "catenable-lists"
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
