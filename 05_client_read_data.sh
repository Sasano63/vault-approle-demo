#!/bin/bash
set -o xtrace

curl --header "X-Vault-Token: $(cat client_token)" \
    $VAULT_ADDR/v1/kv/data/mysql/webapp | jq -r ".data"


