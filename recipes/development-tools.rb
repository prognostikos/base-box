[
  "git",
  "tig",
  "exuberant-ctags",
].each do |package_name|
  package package_name
end

include_recipe "hub"
