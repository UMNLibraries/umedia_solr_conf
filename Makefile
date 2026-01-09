
VERSION := $(shell cat version.txt)

usage:
	@echo "usage: make [clean|build]"

clean:
	docker image rmi -f umedia-solr:$(VERSION)

.PHONY: build
build:
	docker build --no-cache --tag umedia-solr:$(VERSION) --platform 'linux/amd64,linux/arm64' .
	@echo "\n\ndocker run -it umedia-solr:$(VERSION) /bin/bash"
