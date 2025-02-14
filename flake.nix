{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-24.11";
    utils.url = "github:numtide/flake-utils";
  };
  outputs = {
    self,
    nixpkgs,
    utils,
  }:
    utils.lib.eachDefaultSystem (
      system: let
        pkgs = nixpkgs.legacyPackages.${system};
      in rec {
        packages.elm = (pkgs.callPackage (import ./elm) {}).elm;
        defaultPackage = packages.elm;
      }
    );
}
