module MyRails
  require 'my_rails/controller'
  require "my_rails/router"
  
  class Application
  
    STATUS = 200
    HEADERS =  {"Content-Type"=> "text/html"}
  
    def self.call(env)
      controller = router(env["PATH"]).controller(env)
      controller.response
    end
  
    def self.body
      ["Hello world"]
    end
    
    def self.router(env)
      Router.new(env)
    end
  
  end
end