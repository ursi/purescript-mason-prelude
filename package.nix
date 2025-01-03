{ ps-pkgs, ps-pkgs-ns, licenses, ... }:
  with ps-pkgs;
  { version = "0.10.2";

    dependencies =
      [ arrays
        console
        either
        exceptions
        functions
        integers
        lists
        numbers
        nullable
        parallel
        point-free
        prelude
        ps-pkgs-ns.ursi.debug
        safe-coerce
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
