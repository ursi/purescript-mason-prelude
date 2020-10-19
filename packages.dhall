let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200724/packages.dhall sha256:bb941d30820a49345a0e88937094d2b9983d939c9fd3a46969b85ce44953d7d9

let overrides = {=}

let additions =
      https://raw.githubusercontent.com/ursi/purescript-package-set/7/packages.dhall sha256:b3c12e62eefd5bccfdff7382e20e95eb4b665f335d3de712058128a88bcb4dcb

in  upstream // overrides // additions
