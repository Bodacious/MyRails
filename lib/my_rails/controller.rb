module MyRails
  
  class Controller
    
    def initialize(env)
      @env = env
    end
    
    def response
      [200, {}, ["Hello from #{self}"]]
    end
  end
  
end