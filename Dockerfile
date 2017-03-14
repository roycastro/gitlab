FROM gitlab/gitlab-ce:nightly
MAINTAINER Przemyslaw Ozgo linux@ozgo.info

RUN \
  apt-get update && \
  apt-get install cron && \
  apt-get clean all

ENV BACKUP_TIME="0 12 * * *"

COPY container-files /
