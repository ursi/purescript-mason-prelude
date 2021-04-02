{ inputs.easy-ps-nix =
    { url = "github:justinwoo/easy-purescript-nix";
      flake = false;
    };

  outputs = { nixpkgs, utils, easy-ps-nix, ... }:
    utils.mkShell
      ({ pkgs, ... }: with pkgs;
         { buildInputs =
             [ dhall
               nodejs
               nodePackages.bower
               nodePackages.pulp
               purescript
               (import (easy-ps-nix + /spago.nix) { inherit pkgs; })
             ];
         }
      )
      nixpkgs;
}
