#!/bin/bash
set -o xtrace

vault secrets disable kv
vault auth disable approle
rm wrapping_token
rm secret_id
rm role_id
rm client_token
rm payload.json