#
# This makefile serves as a demo of some of the available scripts.
#

.PHONY: build
build:
	./builder/build-dockerfile -o Dockerfile --create-user user
	docker build -t ocaml .
	docker run -t ocaml opam exec -- ocamlc -v

.PHONY: clean
clean:
	git clean -dfX
