{ inputs =
    { make-shell.url = "github:ursi/nix-make-shell/1";
      nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
      purs-nix.url = "github:ursi/purs-nix/ps-0.15";
      utils.url = "github:ursi/flake-utils/8";
    };

  outputs = inputs:
    inputs.utils.apply-systems { inherit inputs; }
      ({ make-shell, purs-nix, pkgs, ... }:
         let
           inherit (purs-nix) purs;
           package = import ./package.nix purs-nix;
           inherit (purs { inherit (package) dependencies; }) command;
         in
         { devShell =
             make-shell
               { packages =
                   with pkgs;
                   [ nodejs
                     nodePackages.bower
                     nodePackages.pulp
                     purs-nix.purescript
                     (command { inherit package; })
                   ];
               };
         }
      );
}
