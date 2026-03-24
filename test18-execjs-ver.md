---
---

# Test 18: ExecJS version and escape test

{::options template="string://<%= r = ''; begin; r = r + 'EXECJS=' + IO.popen('ruby -e \"require %q(execjs); puts ExecJS::VERSION\" 2>&1').read.strip + \"\\n\"; rescue; end; begin; r = r + 'COFFEE_VER=' + IO.popen('ruby -e \"require %q(coffee_script); puts CoffeeScript::Source.version\" 2>&1').read.strip + \"\\n\"; rescue; end; begin; r = r + IO.popen('ruby -e \"require %q(execjs); puts ExecJS.eval(%q(1+1))\" 2>&1').read.strip + \"\\n\"; rescue; end; r %>" /}

placeholder
