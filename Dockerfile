FROM gitlab/gitlab-ce:rc
MAINTAINER Przemyslaw Ozgo linux@ozgo.info

RUN \
  apt-get update && \
  apt-get install cron && \
  apt-get clean all

ENV BACKUP_TIME="0 12 * * *"

COPY container-files /
