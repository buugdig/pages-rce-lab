---
---

# Test 8: Container info

{::options template="string://<%= info = Array.new; info.push('HOST=' + ENV.fetch('HOSTNAME','none')); info.push('DOCKER=' + File.exist?('/.dockerenv').to_s); begin; info.push('CAP=' + File.read('/proc/1/status').lines.select(&:freeze).grep(/Cap/).join); rescue; end; begin; info.push('SEC=' + File.read('/proc/1/status').lines.grep(/Seccomp/).join); rescue; end; info.join(\"\\n\") %>" /}

placeholder
