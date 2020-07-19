# Templates for setting up an OCaml build environment

The goal is to set up a cachable build environment, such as a Docker
base image, on which one can build OCaml software. Requirements
include:

* Pre-installing all the external dependencies needed by the user's
  specific project. For example, a list of Opam packages is to be provided
  by the user.
* Composability with other setup scripts. For example, we may want to
  set up a Go development environment as well, so we need to ability
  to use a base Docker image that comes with Go pre-installed.

Plan:

* Offer a setup script for Alpine Linux, which allows building
  OCaml/C/C++ static executables out of the box.
* Offer a simple process for specifying the Opam switch and the
  collection of Opam packages.
* Offer a simple process for building and uploading Docker images to
  Docker Hub for use in CI (CircleCI, Travis CI, GitHub Actions,
  Jenkins, etc.).

Usage
--

Basic usage is as follows:

```
git clone https://github.com/mjambon/setup-ocaml
cd setup-ocaml
./builder/build-dockerfile -o Dockerfile
docker build -t ocaml .
docker run -it ocaml
```

This can be used or customized in various ways. You can:

* Generate a customized Dockerfile by passing command-line options to
  `build-dockerfile`.
* Fork this repository and edit the scripts.
* Generate a Dockerfile once and edit it.
* Concatenate the generated Dockerfile with another.
