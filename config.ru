ENV['GEM_PATH'] = ENV['HOME'] + '/.gems'

require 'rubygems'
require 'sinatra'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production,
  :views => File.join(File.dirname(__FILE__), 'views'),
  :public => File.join(File.dirname(__FILE__), 'public')
)
         
require 'bliki'

run Sinatra.application
