#!/usr/bin/env nix-shell
#!nix-shell -p cabal2nix elm2nix -i bash ../../..

# Update all cabal packages.
cabal2nix 'https://github.com/zwilias/elm-instrument' --revision '0.0.7' > packages/ghc8_10/elm-instrument/default.nix
for subpath in 'avh4-lib' 'elm-format-lib' 'elm-format-markdown' 'elm-format-test-lib'; do
  cabal2nix 'https://github.com/avh4/elm-format' --revision '0.8.7' \
    --subpath $subpath > packages/ghc9_2/elm-format/${subpath}.nix
done
cabal2nix 'https://github.com/avh4/elm-format' --revision '0.8.7' > packages/ghc9_2/elm-format/elm-format.nix
cabal2nix 'https://github.com/stoeffel/elmi-to-json' --revision '1.3.0' > packages/ghc8_10/elmi-to-json/default.nix
cabal2nix 'https://github.com/ekmett/ansi-wl-pprint' --revision 'v0.6.8.1' > packages/ghc9_6/ansi-wl-pprint/default.nix

cabal2nix https://github.com/Janiczek/elm-sourcemaps --revision 9b4bcadc429cb3e18d7e676472a2ef439cb44144 > packages/ghc9_6/elm/default.nix

echo "need to manually copy registry.dat from an existing elm project"
#elm2nix snapshot > registry.dat

pushd "$(nix-build -A elmPackages.elm.src --no-out-link ../../..)/reactor"
  elm2nix convert > $OLDPWD/packages/elm-srcs.nix
popd
