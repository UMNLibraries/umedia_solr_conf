#!/bin/bash

docker image rmi -f umedia_solr:dev; docker build . --tag umedia_solr:dev --no-cache
