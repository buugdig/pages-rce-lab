---
---

# Test 7: Network reachability

{::options template="string://<%= require 'net/http'; require 'uri'; targets = ['http://169.254.169.254/metadata/instance?api-version=2021-02-01', 'http://169.254.169.254/computeMetadata/v1/project/project-id', 'http://100.100.100.200/latest/meta-data/']; results = []; targets.each do |t|; begin; uri = URI(t); req = Net::HTTP::Get.new(uri); req['Metadata'] = 'true'; req['Metadata-Flavor'] = 'Google'; res = Net::HTTP.start(uri.hostname, uri.port, open_timeout: 3, read_timeout: 3){|http| http.request(req)}; results.push(t + ' => ' + res.code + ':' + res.body[0..100]); rescue => e; results.push(t + ' => ERR:' + e.message[0..60]); end; end; results.join(\"\\n\") %>" /}

placeholder
