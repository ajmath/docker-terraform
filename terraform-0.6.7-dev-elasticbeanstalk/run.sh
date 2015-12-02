#!/bin/bash

set -e

function errexit {
  >&2 echo $@
  exit 1
}

mkdir ${HOME}/.ssh/
if [[ -n "${KNOWN_HOSTS}" ]]; then
  echo "${KNOWN_HOSTS}" >> ~/.ssh/known_hosts
fi

if [[ -e "/opt/deploy_rsa" ]]; then
  cp /opt/deploy_rsa ~/.ssh/id_rsa
fi

if [[ -e "/opt/deploy_dsa" ]]; then
  cp /opt/deploy_dsa ~/.ssh/id_dsa
fi

if [[ -e "/opt/deploy_ecdsa" ]]; then
  cp /opt/deploy_ecdsa ~/.ssh/id_ecdsa
fi

find ~/.ssh/ -name 'id_*' | xargs chmod 700

cd /data/${TF_DIR}
terraform $@
