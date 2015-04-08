module MyRails
  class Application
  
    STATUS = 200
    HEADERS =  {"Content-Type"=> "text/html"}
  
    def self.call(env)
      [STATUS, HEADERS, body]
    end
  
    def self.body
      ["Hello world"]
    end
  
  end
end