let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200724/packages.dhall sha256:bb941d30820a49345a0e88937094d2b9983d939c9fd3a46969b85ce44953d7d9

let overrides = {=}

let additions =
      https://raw.githubusercontent.com/ursi/purescript-package-set/3/packages.dhall sha256:4d9980bc46c738fd0dc758df60b16a1f87517527fb1b62b6a663c3c289a6efb3

in  upstream // overrides // additions
