{ name = "mason-prelude"
, dependencies =
  [ "arrays"
  , "debug"
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
}
