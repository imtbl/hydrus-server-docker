FROM python:3.8-slim-buster

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

COPY ./hydrus .
COPY ./deb .

RUN \
  chown -R hydrus:hydrus /usr/src/app && \
  chmod +x \
    server.py \
    bin/swfrender_linux \
    bin/upnpc_linux && \
  mkdir /data && \
  chown -R hydrus:hydrus /data && \
  apt-get update && apt-get install --no-install-recommends -y \
    build-essential \
    ffmpeg \
    multiarch-support \
    wget && \
  dpkg -i libjpeg8_8d-2_amd64.deb && \
  rm libjpeg8_8d-2_amd64.deb && \
  pip install --upgrade pip && \
  pip install virtualenv && \
  virtualenv venv && \
  . venv/bin/activate && \
  pip install \
    beautifulsoup4~=4.8.2 \
    chardet~=3.0.4 \
    lz4~=3.0.2 \
    numpy~=1.18.0 \
    opencv-python-headless~=4.1.2.30 \
    pillow~=6.2.1 \
    psutil~=5.6.7 \
    pylzma~=0.5.0 \
    pyopenssl~=19.1.0 \
    pyyaml~=5.2 \
    requests~=2.22.0 \
    send2trash~=1.5.0 \
    service_identity~=18.1.0 \
    twisted~=19.10.0 && \
  rm -r ~/.cache && \
  apt-get remove build-essential --purge -y && \
  apt-get clean && apt-get autoremove --purge -y && \
  rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN chmod +x /usr/local/bin/docker-entrypoint

EXPOSE 45870/tcp 45871/tcp 45872/tcp

HEALTHCHECK --interval=1m --timeout=10s --retries=3 \
  CMD wget --quiet --tries=1 --no-check-certificate --spider \
    https://localhost:45870 || exit 1

VOLUME /data

USER hydrus

ENTRYPOINT ["docker-entrypoint"]
