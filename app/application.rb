
class Application 
  
  
  def call(env)
    
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
   
    if req.path.match(/item/)
      item_price = req.path.split('/item/').last 
      if item = @@items.find{|i| i.price == item_price} 
        resp.write item.price
    end 
   
   
  end 
      
  
  
end 