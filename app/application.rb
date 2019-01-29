
class Application 
  
  
  def call(env)
    
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
   
    if req.path.match(/item/)
      item_price = req.path.split('/item/').last 
      if item = @@items.find{|i| i.price == item_price} 
        resp.write item.price
      else 
        resp.status = 400
        resp.write "Item not found"
      end 
    else 
      resp.status = 400 
      resp.write "Route not Found"
    end 
    resp.finish
  end 
end 