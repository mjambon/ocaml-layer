# Make and host your own OCaml base image

The goal is to set up a cachable build environment on which one can
build OCaml software. Requirements include:

* Pre-installing all the external dependencies needed by the user's
  projects. A list of opam packages is to be provided
  by the user. By "external dependency", we mean any dependency that
  doesn't change too often. These shouldn't be rebuilt each time the
  user wants to test new code, because it wastes time.
* Composability with other setup scripts. For example, we may want to
  set up a Go development environment as well, so we need to ability
  to use a base Docker image that comes with Go pre-installed.
  The user should be able to specify the base image of their choice as
  long as it falls within a supported family e.g. "Alpine" or
  "Debian-like".
* No need to know OCaml or to have OCaml installed on your machine to
  set this up.
* Easy customization by forking and editing this project.

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

Suggestions
--

* If you're an individual open-source developer, you may want to
  target two versions of OCaml: the minimum version that you're
  willing to support and the latest version.
* The [ocaml/opam2 images](https://hub.docker.com/r/ocaml/opam2/)
  already support many flavors of operating systems and are
  graciously maintained for you. You probably should use those if the
  speed of routine CI builds isn't a priority for you.

Unknowns
--

Please suggest answers if you know them!

* Docker Hub provides a way to automatically build images when your
  git repository changes. Some code to set this up would be nice. I
  don't know how it works.
* Docker Hub doesn't seem to provide periodic builds. It would be
  handy to upgrade packages on a daily or weekly basis.
  Is there a simple solution for this?
