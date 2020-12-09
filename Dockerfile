# hydrus-server-docker
# Copyright (C) 2018-present  imtbl  https://github.com/imtbl

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.

# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

FROM python:3.9-slim-buster

ARG USER_ID=1000
ARG GROUP_ID=1000

ENV \
  USER_ID=$USER_ID \
  GROUP_ID=$GROUP_ID

WORKDIR /usr/src/app

COPY ./hydrus .
COPY ./deb .

RUN \
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
    beautifulsoup4~=4.9.3 \
    chardet~=3.0.4 \
    lz4~=3.1.0 \
    numpy~=1.19.4 \
    opencv-python-headless~=4.4.0.46 \
    pillow~=8.0.1 \
    psutil~=5.7.3 \
    pylzma~=0.5.0 \
    pyopenssl~=19.1.0 \
    pyyaml~=5.3.1 \
    requests~=2.25.0 \
    send2trash~=1.5.0 \
    service_identity~=18.1.0 \
    twisted~=20.3.0 && \
  rm -r ~/.cache && \
  apt-get remove build-essential --purge -y && \
  apt-get clean && apt-get autoremove --purge -y && \
  rm -rf /var/lib/apt/lists/* && \
  chown -R ${USER_ID}:${GROUP_ID} /usr/src/app && \
  chmod +x \
    server.py \
    bin/swfrender_linux \
    bin/upnpc_linux && \
  mkdir /data && chown -R ${USER_ID}:${GROUP_ID} /data

COPY docker-cmd-start.sh /usr/local/bin/start
RUN chmod +x /usr/local/bin/start

EXPOSE 45870/tcp 45871/tcp 45872/tcp

HEALTHCHECK --interval=1m --timeout=10s --retries=3 \
  CMD wget --quiet --tries=1 --no-check-certificate --spider \
    https://localhost:45870 || exit 1

VOLUME /data

USER ${USER_ID}:${GROUP_ID}

CMD ["start"]
