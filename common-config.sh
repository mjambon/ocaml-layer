# To be included in configs/*.sh

# Extra packages to be installed by the native package manager.

# Alpine
extra_apk_packages="
  graphviz
  nano
  python3
"

# Ubuntu
extra_deb_packages="
  graphviz
  nano
  python3
"

# The collection of opam packages we want to install. Go wild.
opam_packages="
  alcotest
  atdgen
  batteries
  containers
  cmdliner
  dune
  ocamlgraph
  sexplib
  utop
"
