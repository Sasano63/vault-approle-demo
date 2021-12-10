#!/bin/bash
set -o xtrace

vault write -format=json -wrap-ttl=360s -force auth/approle/role/webapp/secret-id | jq -r '.wrap_info.token' > wrapping_token
