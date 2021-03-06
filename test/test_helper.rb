$LOAD_PATH.unshift File.dirname(__FILE__) + "/../lib"
$KCODE = "utf8" if RUBY_VERSION < "1.9"

require "rubygems"
require "test/unit"
require "ostruct"
require "active_record"

Rails = OpenStruct.new(:version => ActiveRecord::VERSION::STRING)
require "password_strength"

ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => ":memory:")
load "schema.rb"
