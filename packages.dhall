let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200724/packages.dhall sha256:bb941d30820a49345a0e88937094d2b9983d939c9fd3a46969b85ce44953d7d9

let overrides = {=}

let additions =
      https://raw.githubusercontent.com/ursi/purescript-package-set/1/packages.dhall sha256:b4cd948a32b22fd2093a8c69acb886671a024434a1c8c7e9762a2697bd9e6543

in  upstream // overrides // additions
