---
---

# Test 10: Other kramdown options via inline extension

Test setting syntax_highlighter via inline options (bypasses OVERRIDES at parse time):

{::options syntax_highlighter="coderay" /}

```ruby
puts "test"
```

{::options parse_block_html="true" /}

<div markdown="1">

## HTML block parsed as markdown

{::options template="string://<%= 'INLINE_OPTS_WORK' %>" /}

</div>
