FROM debian:stretch-slim

ARG HOST_USER_ID=1000
ARG HOST_GROUP_ID=1000

ENV HOST_USER_ID=$HOST_USER_ID
ENV HOST_GROUP_ID=$HOST_GROUP_ID

RUN \
  if [ $(getent group ${HOST_GROUP_ID}) ]; then \
    useradd -r -u ${HOST_USER_ID} hydrus; \
  else \
    groupadd -g ${HOST_GROUP_ID} hydrus && \
    useradd -r -u ${HOST_USER_ID} -g hydrus hydrus; \
  fi

WORKDIR /usr/src/app

RUN apt-get update && \
  apt-get install -y ca-certificates curl ffmpeg wget --no-install-recommends && \
  rm -rf /var/lib/apt/lists/* && \
  wget "https://www.github.com$( \
  curl -sL https://github.com/hydrusnetwork/hydrus/releases/latest \
  | grep 'Linux.-.Executable.tar.gz' \
  | sed -n 's/.*href="\([^"]*\).*/\1/p')" && \
  tar zxvf $(ls | grep "Linux.-.Executable.tar.gz") --strip-components 1 && \
  rm $(ls | grep "Linux.-.Executable.tar.gz") && \
  chown -R hydrus:hydrus /usr/src/app && \
  mkdir /data && chown -R hydrus:hydrus /data && \
  apt-get remove ca-certificates curl wget -y

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

EXPOSE 45870/tcp
EXPOSE 45871/tcp
EXPOSE 45872/tcp

USER hydrus

ENTRYPOINT ["docker-entrypoint"]
