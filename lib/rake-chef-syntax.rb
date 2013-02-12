require "rake-chef-syntax/version"

namespace :chef do
  desc "Run knife cookbook test to validate syntax of cookbooks"
  task :syntax_check do
    puts "Running knife cookbook test ... "
    if File.exists?('cookbooks')
      sh "knife cookbook test -a -o cookbooks/"
    else
      sh "knife cookbook test -a -o ."
    end
    puts "knife cookbook test FINISHED."
  end 
end
