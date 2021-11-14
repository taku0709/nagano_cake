class Public::OrdersController < ApplicationController
  
  
 def new
   @addresses = Address.all
 end
 
 
 
 private
 
 def order_params
   params.require(:order).permit(:postal_code, :name, :address)
 end
 
end
