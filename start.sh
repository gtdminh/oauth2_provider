#!/bin/bash
serve all --dangerous-force-http

clients create \
  --endpoint http://oauth2_provider:4445 \
  --id webts \
  --secret qsQYHm2ypajkgubNhXatsBuSnLg72AwP \
  --response-types code, id_token \
  --grant-types refresh_token, authorization_code \
  --scope openid, offline \
  --callbacks http://127.0.0.1:4446/callback

token user \
  --token-url http://oauth2_provider:4444/oauth2/token \
  --auth-url http://localhost:4444/oauth2/auth \
  --scope openid, offline \
  --client-id webts \
  --client-secret qsQYHm2ypajkgubNhXatsBuSnLg72AwP
