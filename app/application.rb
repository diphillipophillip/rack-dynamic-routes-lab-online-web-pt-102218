
class Application 
  
  
  def call(env)
    
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
   
    if req.path.match(/item/)
      item_price = 
   
   
  end 
      
  
  
end 