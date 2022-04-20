# To be included in configs/*.sh

# Extra packages to be installed by the native package manager.
#
# tree-sitter needs pkg-config, npm/node, python (for node-gyp).

# Alpine
extra_apk_packages="
  nodejs
  npm
  pcre-dev
  python3
"

# Ubuntu
extra_deb_packages="
  libpcre3-dev
  nodejs
  npm
  pkg-config
  python3
"

# The collection of opam packages we want to install. Go wild.
opam_packages="
  alcotest
  ansiterminal
  atdgen
  atdpy
  bloomf
  cmdliner
  comby-kernel.1.4.1
  conf-pkg-config
  dune
  dune-glob
  easy_logging.0.8.1
  easy_logging_yojson.0.8.1
  grain_dypgen
  junit_alcotest
  lsp.1.3.0
  merlin
  menhir.20211128
  num
  ocamlfind
  ocamlformat.0.21.0
  ocamlgraph
  ocp-indent
  ounit2
  pcre
  parmap
  ppxlib.0.22.0
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
  visitors.20210608
"
