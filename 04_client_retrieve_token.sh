#!/bin/bash
set -o xtrace

ROLE_ID=$(cat role_id)
SECRET_ID=$(cat secret_id)

cat << EOF > payload.json 
{
  "role_id": "$ROLE_ID",
  "secret_id": "$SECRET_ID"
}
EOF

curl --request POST --data @payload.json $VAULT_ADDR/v1/auth/approle/login \
    | jq -r ".auth.client_token" > client_token

