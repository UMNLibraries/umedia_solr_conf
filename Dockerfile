FROM solr:8.9
LABEL maintainer="dls@umn.edu"

# default directory for Solr configsets, see
# https://solr.apache.org/guide/solr/latest/configuration-guide/config-sets.html
ENV CONFIGSET_DIR=/opt/solr/server/solr/configsets

COPY --chown=solr:solr umedia ${CONFIGSET_DIR}/umedia
