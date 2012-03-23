# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://docs.rubygems.org/read/chapter/20 for more options
  gem.name = "icmp4em"
  gem.homepage = "http://github.com/krakatoa/icmp4em"
  gem.license = "MIT"
  gem.summary = %Q{Asynchronous implementation of ICMP ping over EventMachine}
  gem.description = %Q{Asynchronous implementation of ICMP ping using EventMachine. Can be used to ping many hosts at once in a non-blocking fashion, with callbacks for success, timeout, and host failure/recovery based on specified threshold numbers.}
  gem.email = "krakatoa1987@gmail.com"
  gem.authors = ["Jake Douglas", "Fernando Alonso"]
  gem.add_dependency "eventmachine", ">= 1.0.0.beta.4"
  gem.require_paths = ["lib"]
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

#require 'rcov/rcovtask'
#Rcov::RcovTask.new do |test|
#  test.libs << 'test'
#  test.pattern = 'test/**/test_*.rb'
#  test.verbose = true
#  test.rcov_opts << '--exclude "gems/*"'
#end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title = "bliss #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
