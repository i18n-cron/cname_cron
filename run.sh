#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex
source env.sh
curl -fsSL https://raw.githubusercontent.com/i18n-cron/dist/cname_flatten/run |
  node --input-type=module
