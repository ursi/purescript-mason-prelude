let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200724/packages.dhall sha256:bb941d30820a49345a0e88937094d2b9983d939c9fd3a46969b85ce44953d7d9

let additions =
      https://raw.githubusercontent.com/ursi/purescript-package-set/9/packages.dhall sha256:d98758d7692c80f696f1430ddcb81872730a8414e0666a78aaa9bcf5ef3d5cee

in  upstream ⫽ additions
