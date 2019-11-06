#!/usr/bin/env bash

set -o errexit -o nounset

"${KUBECTL}" delete \
  --filename "${RESOURCE}" \
  ${NAMESPACE:+--namespace "${NAMESPACE}"}
