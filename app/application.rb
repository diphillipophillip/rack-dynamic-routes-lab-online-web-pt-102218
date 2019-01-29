
class Application 
  
  
  def call(env)
    
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
   
    if req.path.match(/item/)
      item_price = req.path.split('/item/').last 
      item = @@items.find{|i| i.price == item_price} 
      
   
   
  end 
      
  
  
end 