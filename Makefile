#
# Usage:
# - 'make' for building the Docker images specified by SELECTED_CONFIGS.
# - 'make push' for pushing these images to your registry e.g. Docker Hub.
#

ifndef SELECTED_CONFIGS
  # The list of configuration files, one per image that you want to build
  # when running 'make' and 'make push'.
  SELECTED_CONFIGS = \
    configs/alpine.sh \
    configs/ubuntu.sh \
    configs/alpine-ocaml-4.08.sh \
    configs/ubuntu-ocaml-4.08.sh \
    configs/alpine-ocaml-4.03.sh \
    configs/ubuntu-ocaml-4.03.sh
endif
export SELECTED_CONFIGS

# Generate a Dockerfile for each config file and build a docker image.
.PHONY: build
build:
	./docker-build $(SELECTED_CONFIGS)

# Push the docker images to Docker Hub or some other registry.
.PHONY: push
push:
	./docker-push

# Build and push.
.PHONY: all
all:
	$(MAKE) build
	$(MAKE) push

.PHONY: clean
clean:
	git clean -dfX
