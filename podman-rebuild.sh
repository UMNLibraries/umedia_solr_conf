#!/bin/bash
#
# USAGE ./rebuild.sh dev|test
# Deletes old Docker images and rebuilds for TAG dev|test
tag="$1"
podman rmi -f "umedia_solr:${tag}"; podman build . --tag "umedia_solr:${tag}" --no-cache
