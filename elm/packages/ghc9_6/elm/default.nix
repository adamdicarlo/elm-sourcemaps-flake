{ mkDerivation, ansi-terminal, ansi-wl-pprint, base
, base64-bytestring, binary, bytestring, containers, directory
, edit-distance, fetchgit, file-embed, filelock, filepath, ghc-prim
, haskeline, HTTP, http-client, http-client-tls, http-types
, indexed-traversable, language-glsl, lib, mtl, network, parsec
, process, raw-strings-qq, scientific, SHA, snap-core, snap-server
, template-haskell, time, unordered-containers, utf8-string, vector
, zip-archive
}:
mkDerivation {
  pname = "elm-sourcemaps";
  version = "0.19.1";
  src = fetchgit {
    url = "https://github.com/Janiczek/elm-sourcemaps";
    sha256 = "13nijjia94sxysx7rdg2p1l39c5dyfp61lxrn4f6dfhcgps76n20";
    rev = "9b4bcadc429cb3e18d7e676472a2ef439cb44144";
    fetchSubmodules = true;
  };
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [
    ansi-terminal ansi-wl-pprint base base64-bytestring binary
    bytestring containers directory edit-distance file-embed filelock
    filepath ghc-prim haskeline HTTP http-client http-client-tls
    http-types indexed-traversable language-glsl mtl network parsec
    process raw-strings-qq scientific SHA snap-core snap-server
    template-haskell time unordered-containers utf8-string vector
    zip-archive
  ];
  homepage = "https://elm-lang.org";
  description = "The `elm-sourcemaps` command line interface";
  license = lib.licenses.bsd3;
  mainProgram = "elm-sourcemaps";
}
