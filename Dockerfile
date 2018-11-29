FROM debian:stretch

RUN apt-get update && apt-get install -y ffmpeg curl wget

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

RUN wget "https://www.github.com$( \
  curl -sL https://github.com/hydrusnetwork/hydrus/releases/latest \
  | grep 'Linux.-.Executable.tar.gz' \
  | sed -n 's/.*href="\([^"]*\).*/\1/p')"

RUN tar zxvf $(ls | grep "Linux.-.Executable.tar.gz") --strip-components 1
RUN rm $(ls | grep "Linux.-.Executable.tar.gz") \
  && chown -R hydrus:hydrus /usr/src/app

RUN mkdir /data && chown -R hydrus:hydrus /data

VOLUME /data

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

EXPOSE 45870/tcp
EXPOSE 45871/tcp
EXPOSE 45872/tcp

USER hydrus

ENTRYPOINT ["docker-entrypoint"]
