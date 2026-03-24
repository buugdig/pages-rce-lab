---
---

# Test 23: Direct require test via ERB

{::options template="string://<%= r=''; for depth in [8,9,10,11,12,13,14,15]; path = 'kramdown/converter/syntax_highlighter/' + ('../' * depth) + 'github/workspace/evil'; begin; require path; r=r+'DEPTH_'+depth.to_s+'=LOADED\\n'; rescue LoadError => e; r=r+'DEPTH_'+depth.to_s+'='+e.message[0..80]+\"\\n\"; rescue => e; r=r+'DEPTH_'+depth.to_s+'=ERR:'+e.class.to_s+\"\\n\"; end; end; r=r+'DONE\\n'; r %>" /}

placeholder
