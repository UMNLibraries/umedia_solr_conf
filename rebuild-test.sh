#!/bin/bash

docker image rmi -f umedia_solr:test; docker build . --tag umedia_solr:test --no-cache