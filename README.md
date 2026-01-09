# UMedia Solr configuration

```
# start a server, but first create a Solr core named "core" using the "umedia" template
docker run -d -p 8983:8983 umedia_solr:2.1.1 solr-precreate core /opt/solr/server/solr/configsets/umedia

docker tag umedia-solr:2.1.1 ghcr.io/umnlibraries/umedia-solr:2.1.1
docker tag umedia-solr:2.1.1 ghcr.io/umnlibraries/umedia-solr:latest

docker push ghcr.io/umnlibraries/umedia-solr:2.1.1
docker push ghcr.io/umnlibraries/umedia-solr:latest

docker run -it umedia_solr:2.1.1 /bin/bash
```
