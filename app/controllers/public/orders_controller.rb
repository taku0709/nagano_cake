class Public::OrdersController < ApplicationController

 def index
  @orders = Order.all
 end


 def new
   @addresses = Address.all
 end
 
 def show
  @order = Order.find(params[:id
 ])
 end



 private

 def order_params
   params.require(:order).permit(:postal_code, :name, :address)
 end

end
