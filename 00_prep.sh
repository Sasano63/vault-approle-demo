#!/bin/bash
set -o xtrace

vault secrets enable -version=2 kv

#create test data
vault kv put kv/mysql/webapp db_name="users" username="admin" password="passw0rd"