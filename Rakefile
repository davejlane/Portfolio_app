# Make sure you require rake and then create a new
# 'task' called 'test'.  Then you can run rake test
# and it add libs, test, look for the pattern of _test,
# and run.  Finally, make test default for rake, so
# now you just need to type 'rake' to run it.

require 'rake'
require 'rake/testtask'
require File.expand_path('../config/application', __FILE__)

PortfolioApp::Application.load_tasks

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.libs << "test" # here is the test_helper
  t.pattern = "test/**/*_test.rb"
end

task default: :test
