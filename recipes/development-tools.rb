apt_repository 'git-core' do
  uri 'http://ppa.launchpad.net/git-core/ppa/ubuntu'
  distribution node['lsb']['codename']
  components   ['main']
  keyserver    'keyserver.ubuntu.com'
  key          'E1DF1F24'
end

[
  "git",
  "tig",
  "exuberant-ctags",
].each do |package_name|
  package package_name
end

include_recipe "hub"
include_recipe "the_silver_searcher"
