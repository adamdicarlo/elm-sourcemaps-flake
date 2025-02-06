# Elm Sourcemaps flake

A Nix flake to build [elm-sourcemaps][elm-sourcemaps], a fork of the Elm
compiler that emits JavaScript source maps for interactive debugging.

This is a copy and slight adaptation of the [nixpkgs][nixpkgs-elm] code for
building the official Elm compiler and related tools.

Stand-alone use (requires Nix to be installed with flakes enabled):

    nix build .
    ./result/bin/elm-sourcemaps

## New to Nix?

The [Determinate Nix Installer][determinate-nix] installs Nix with flakes
enabled by default.

[elm-sourcemaps]: https://github.com/Janiczek/elm-sourcemaps
[nixpkgs-elm]: https://github.com/NixOS/nixpkgs/tree/67fdf2c3491f1876b8d8640f23c9459cb799ced2/pkgs/development/compilers/elm
[determinate-nix]: https://github.com/DeterminateSystems/nix-installer
