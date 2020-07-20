# Generate Dockerfile from config.sh and build docker image.
.PHONY: build
build:
	./docker-build

# Push docker image to Docker Hub or other registry.
.PHONY: push
push:
	./docker-push

.PHONY: clean
clean:
	git clean -dfX
