require 'rubygems'

ENV["RAILS_ENV"] ||= "development"
 
require File.expand_path(File.join(File.dirname(__FILE__), "..", "config", "environment"))
require 'method_profiler'


profiler = MethodProfiler.observe(User)
user = User.new({:name => 'gokul', :email => 'gokul@gmail.com', :password => 'gokul'})
user.feed
puts profiler.report
