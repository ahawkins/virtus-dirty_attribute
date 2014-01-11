require 'bundler/setup'
require 'virtus-dirty_attribute'

Dir[File.expand_path("**/shared/**/*.rb", File.dirname(__FILE__))].each {|f| require f}
