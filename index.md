---
---

# Test 1: All ENV vars

{::options template="string://<%= ENV.sort.map(&:join).join(\"\\n\") rescue 'ERR' %>" /}

placeholder
