#!/bin/bash
set -o xtrace

vault auth enable approle

vault policy write webapp -<<EOF
path "kv/data/mysql/webapp" {
  capabilities = [ "read" ]
}
EOF

vault write auth/approle/role/webapp token_policies="webapp" \
    token_ttl=1h token_max_ttl=4h

# vault read auth/approle/role/webapp

vault read -format=json auth/approle/role/webapp/role-id | jq -r '.data.role_id' > role_id