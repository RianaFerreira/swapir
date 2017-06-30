require "bundler"
require "rake/testtask"

# use bundler to manage all the application dependencies
Bundler::GemHelper.install_tasks

# use rake task to run the test suite
Rake::TestTask.new do |t|
  t.libs << "test"
end

desc "Run Tests"
task default: :test
