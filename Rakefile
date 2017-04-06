ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

def reload!
  load_all './app/models/*.rb'
end

# Type `rake -T` on your command line to see the available rake tasks.

desc 'Drop into Pry console'
task :console do
  puts "Loading your application environment..."
  reload!
  puts "Console started:"
  Pry.start
end
