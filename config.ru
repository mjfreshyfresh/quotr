require 'rubygems'
require 'sinatra'

set :environment, :production
set :run, false
disable :reload 

log = File.new("./sails_app.log", "a")
STDOUT.reopen(log)

require 'app.rb'
run Sinatra::Application
