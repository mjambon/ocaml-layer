ocaml-layer
==
[![CircleCI badge](https://circleci.com/gh/mjambon/ocaml-layer.svg?style=svg)](https://app.circleci.com/pipelines/github/mjambon/ocaml-layer)

Bring your OCaml CI jobs down to 1 min.

Motivation
--

The goal is to set up a cachable build environment on which one can
build OCaml software.

* Pre-install all the external dependencies - opam packages and more.
* You can start from the base Docker image of your choice.
* Admin-friendly. Maintenance requires no OCaml knowledge.
* Easy customization by forking and editing the project.
* Can be tested locally. Not tied to the caching features of a
  specific CI vendor.

Usage
--

For evaluation purposes, you can simply run `make` and watch
an image being built with some default settings.

For actual use, follow these steps:

1. Create your own Docker repository on
   [Docker Hub](https://hub.docker.com/) or some other registry.
2. Fork this git repository.
3. Add packages to the lists in `common-config.sh`.
4. Create or edit one configuration file per container, in `configs/`.
5. Adjust the `SELECTED_CONFIGS` variable in the `Makefile`.
6. Run `make` to build the Docker images.
7. Run `make push` to upload the images.
8. Use these images as base images in your CI jobs.

You can reuse and adapt the [CircleCI config](.circleci/config.yml) of
this repo to rebuild your images on a weekly basis or so.

Suggestions
--

* If you're an individual open-source developer, you may want to
  target two versions of OCaml: the minimum version that you're
  willing to support and the latest version.
* The [ocaml/opam2 images](https://hub.docker.com/r/ocaml/opam2/)
  already support many flavors of operating systems and are
  graciously maintained for you. You probably should use those if the
  speed of routine CI builds isn't a priority for you.
