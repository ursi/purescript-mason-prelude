{ ps-pkgs, ps-pkgs-ns, licenses, ... }:
  with ps-pkgs;
  { version = "0.9.1";

    dependencies =
      [ arrays
        console
        either
        exceptions
        functions
        integers
        lists
        numbers
        parallel
        point-free
        prelude
        ps-pkgs-ns.ursi.debug
        strings
        tuples
        unfoldable
      ];

    pursuit =
      { name = "mason-prelude";
        license = licenses.bsd3;
        repo = "https://github.com/ursi/purescript-mason-prelude.git";
      };
  }
