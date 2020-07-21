# Generate Dockerfile from config.sh and build a docker image.
.PHONY: build
build:
	./docker-build

# Push the docker image to Docker Hub or some other registry.
.PHONY: push
push:
	./docker-push

# Build and push for each configuration file found in 'configs/' instead
# of using 'config.sh'.
.PHONY: all
all:
	./docker-build configs/*
	./docker-push configs/*

.PHONY: clean
clean:
	git clean -dfX
