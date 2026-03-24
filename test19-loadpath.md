---
---

# Test 19: Load path discovery

{::options template="string://<%= r=''; idx=0; for p in $LOAD_PATH; r=r+'LP'+idx.to_s+'='+p+\"\\n\"; idx=idx+1; end; r=r+'CWD='+Dir.pwd+\"\\n\"; r=r+'RUBY='+RUBY_VERSION+\"\\n\"; begin; r=r+'KRAMDOWN='+Gem.loaded_specs['kramdown'].full_gem_path+\"\\n\"; rescue; end; begin; r=r+'ROUGE='+Gem.loaded_specs['rouge'].full_gem_path+\"\\n\"; rescue; end; r %>" /}

placeholder
