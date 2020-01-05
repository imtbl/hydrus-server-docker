#!/bin/bash

USER_ID=${CUSTOM_UID:-1000}
GROUP_ID=${CUSTOM_GID:-1000}

echo "Setting permissions to UID/GID ${USER_ID}/${GROUP_ID}."
chown ${USER_ID}:${GROUP_ID} -R /usr/src/app
chown ${USER_ID}:${GROUP_ID} -R /data

exec gosu ${USER_ID}:${GROUP_ID} "$@"
