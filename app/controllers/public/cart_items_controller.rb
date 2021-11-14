class Public::CartItemsController < ApplicationController

 def index
 end

 def subtotal
  item.with_tax_price * amount

 end

 def create
 end

 def update
 end

 def destoroy
 end

 def destory_all
 end



  private

   def cart_item_params
     params.require(:cart_item).permit(:item_id, :amount)
   end
end
