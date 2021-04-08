{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { version = "0.6.0";
    repo = "https://github.com/ursi/purescript-mason-prelude";
    rev = "ae63c001d58133a5348d4b1d100e1522b488f5f6";
    dependencies =
      [ arrays
        console
        either
        functions
        integers
        lists
        math
        parallel
        point-free
        prelude
        strings
        tuples
        unfoldable
      ];
  }
