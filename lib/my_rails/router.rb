module MyRails
  class Router
  
    def initialize(path)
      @path = path
    end
    
    def controller(env)
      Controller.new(env)
    end
  
  end
end