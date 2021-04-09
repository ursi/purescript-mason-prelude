{ ps-pkgs, ps-pkgs-ns, ... }:
  with ps-pkgs;
  { version = "0.7.0";
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
