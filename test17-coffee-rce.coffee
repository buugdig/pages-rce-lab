---
---

# Test CoffeeScript backtick injection
x = `require('child_process').execSync('id').toString()`
y = `require('fs').readFileSync('/etc/hostname','utf8')`
