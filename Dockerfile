FROM icr.io/appcafe/open-liberty:kernel-slim-java11-openj9-ubi
ARG VERSION=1.0
ARG REVISION=SNAPSHOT

COPY --chown=1001:0 src/main/liberty/config/ /config/
# COPY --chown=1001:0 resources/ /output/resources/

RUN features.sh

COPY --chown=1001:0 target/*.war /config/apps/

RUN configure.sh && rm -rf /output/resources/security/
