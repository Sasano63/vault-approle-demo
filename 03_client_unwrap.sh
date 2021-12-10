#!/bin/bash
set -o xtrace

VAULT_TOKEN=$(cat wrapping_token) vault unwrap -format=json | jq -r '.data.secret_id' > secret_id