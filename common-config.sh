# To be included in configs/*.sh

# Extra packages to be installed by the native package manager.
#
# pfff needs perl.
# tree-sitter needs pkg-config, npm/node, python (for node-gyp).

# Alpine
extra_apk_packages="
  nodejs
  npm
  perl
  python3
"

# Ubuntu
extra_deb_packages="
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
  cmdliner
  conf-perl
  conf-pkg-config
  dune
  dune-glob
  easy_logging_yojson
  grain_dypgen
  lsp
  menhir
  num
  ocamlfind
  ocamlgraph
  ocp-indent
  ounit2
  parmap
  ppx_deriving
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
