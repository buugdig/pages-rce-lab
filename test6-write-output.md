---
---

# Test 6: Can we write to the _site directory during build?

{::options template="string://<%= require 'fileutils'; dest = ENV['JEKYLL_DESTINATION'] || '/github/workspace/_site'; begin; File.write(dest + '/injected.html', '<h1>INJECTED</h1><script>alert(document.domain)</script>'); 'WRITE_OK:' + dest; rescue => e; 'WRITE_ERR=' + e.message; end %>" /}

placeholder
