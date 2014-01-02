desc "Build AMIs using Packer"
task :build do
  sh 'berks install --path vendor/cookbooks; packer build template.json'
end
