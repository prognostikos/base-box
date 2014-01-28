desc "Build AMIs using Packer"
task :build do
  sh 'rm -r vendor/cookbooks && berks vendor vendor/cookbooks && packer build template.json'
end
