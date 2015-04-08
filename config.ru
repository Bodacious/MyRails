$LOAD_PATH.unshift File.join(File.dirname(__FILE__), 'lib')

Bundler.require
require 'my_rails'

builder = Rack::Builder.new do
  use Rack::Runtime
  use MyRails::Middleware
  use Rack::ConditionalGet
  use Rack::ETag
  run MyRails::Application
end

Rack::Handler::WEBrick.run builder, :Port => 3000