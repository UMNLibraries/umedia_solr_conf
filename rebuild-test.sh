#!/bin/bash

docker image rmi -f umnlib/umedia_solr:test; docker build . --tag umnlib/umedia_solr:test --no-cache
docker push umnlib/umedia_solr:test