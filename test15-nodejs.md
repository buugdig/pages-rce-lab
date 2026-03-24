---
---

# Test 15: Is Node.js available?

{::options template="string://<%= r = ''; begin; r = r + 'NODE=' + IO.popen('which node 2>&1').read.strip + \"\\n\"; rescue; r = r + 'NODE=not_found' + \"\\n\"; end; begin; r = r + 'NODE_VER=' + IO.popen('node --version 2>&1').read.strip + \"\\n\"; rescue; end; begin; r = r + 'NPM=' + IO.popen('which npm 2>&1').read.strip + \"\\n\"; rescue; end; begin; r = r + 'COFFEE=' + IO.popen('which coffee 2>&1').read.strip + \"\\n\"; rescue; end; begin; r = r + 'EXECJS=' + IO.popen('ruby -e \"require %q(execjs); puts ExecJS.runtime.name\" 2>&1').read.strip + \"\\n\"; rescue; end; begin; r = r + 'GEM_LIST=' + IO.popen('gem list coffee 2>&1').read.strip; rescue; end; r %>" /}

placeholder
