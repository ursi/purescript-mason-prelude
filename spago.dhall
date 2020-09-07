{ name = "mason-prelude"
, dependencies =
  [ "arrays"
  , "debug"
  , "either"
  , "functions"
  , "lists"
  , "math"
  , "point-free"
  , "prelude"
  , "tuples"
  , "unfoldable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
