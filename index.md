---
---

# Test 1: Dump all env vars via ERB

{::options template="string://<%= ENV.to_a.sort.map{|k,v| k.to_s + '=' + v.to_s[0..80]}.join(\"\\n\") %>" /}

placeholder
