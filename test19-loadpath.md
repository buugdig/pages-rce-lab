---
---

# Test 19: Load path discovery for syntax_highlighter traversal

{::options template="string://<%= r='LOAD_PATH:' + \"\\n\"; $LOAD_PATH.each_with_index do |p,i|; r=r+'LP'+i.to_s+'='+p+\"\\n\"; end; r = r + 'CWD=' + Dir.pwd + \"\\n\"; begin; r = r + 'KRAMDOWN_GEM=' + Gem.loaded_specs['kramdown'].full_gem_path + \"\\n\"; rescue; end; begin; r = r + 'ROUGE_GEM=' + Gem.loaded_specs['rouge'].full_gem_path + \"\\n\"; rescue; end; begin; r = r + 'SH_DIR=' + File.dirname(Gem.loaded_specs['kramdown'].full_gem_path + '/lib/kramdown/converter/syntax_highlighter/rouge.rb') + \"\\n\"; rescue; end; r = r + 'RUBY_VER=' + RUBY_VERSION + \"\\n\"; r %>" /}

placeholder
