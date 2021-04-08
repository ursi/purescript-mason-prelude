{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { version = "0.7.0";
    repo = "https://github.com/ursi/purescript-mason-prelude";
    rev = "1f600849f93b85a38822fd90b4749cb30ab6c4f0";
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
        ps-pkgs-ns.ursi.debug
        strings
        tuples
        unfoldable
      ];
  }
