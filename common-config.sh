# To be included in configs/*.sh

# Extra packages to be installed by the native package manager.
#
# pfff needs perl.
# tree-sitter needs pkg-config, npm/node, python (for node-gyp).

# Alpine
extra_apk_packages="
  nodejs
  npm
  pcre-dev
  perl
  python3
"

# Ubuntu
extra_deb_packages="
  libpcre3-dev
  nodejs
  npm
  perl
  pkg-config
  python3
"

# The collection of opam packages we want to install. Go wild.
opam_packages="
  alcotest
  ansiterminal
  atdgen
  bloomf
  cmdliner
  conf-perl
  conf-pkg-config
  dune
  dune-glob
  easy_logging.0.8.1
  easy_logging_yojson.0.8.1
  grain_dypgen
  lsp.1.1.0
  menhir
  num
  ocamlfind
  ocamlgraph
  ocp-indent
  ounit2
  pcre
  parmap
  ppxlib.0.15.0
  ppx_deriving
  ppx_hash
  ppx_sexp_conv
  re
  sexplib
  tsort
  utop
  uucp
  uutf
  yaml
  yojson
"
