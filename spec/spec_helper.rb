require 'virtus/dirty'

Dir[File.expand_path("**/shared/**/*.rb", File.dirname(__FILE__))].each {|f| require f}
