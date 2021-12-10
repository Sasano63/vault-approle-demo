#!/bin/bash
set -o xtrace

curl --header "X-Vault-Token: $(cat client_token)" \
   --request DELETE \
   $VAULT_ADDR/v1/kv/data/mysql/webapp | jq