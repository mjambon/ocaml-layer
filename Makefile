# Generate Dockerfile from config.sh and build a docker image.
.PHONY: build
build:
	./docker-build

# Create an initial 'config.sh' to be used by 'make build' and 'make push'.
.PHONY: init
init: config.sh
config.sh:
	cp configs/alpine.sh config.sh

# Push the docker image to Docker Hub or some other registry.
.PHONY: push
push:
	./docker-push

# Build and push for each configuration file found in 'configs/' instead
# of using 'config.sh'.
.PHONY: all
all:
	$(MAKE) build-all
	$(MAKE) push-all

.PHONY: build-all
build-all:
	./docker-build configs/*

.PHONY: push-all
push-all:
	./docker-push configs/*

.PHONY: clean
clean:
	git clean -dfX
