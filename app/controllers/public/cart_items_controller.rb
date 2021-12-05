class Public::CartItemsController < ApplicationController
 before_action :authenticate_customer!

 def index
  @cart_items = CartItem.all
 end

 def subtotal
  item.with_tax_price * amount

 end

 def create
 end

 def update
 end

 def destroy
 end

 def destroy_all
  cart_item_params.destroy_all
 end



  private

   def cart_item_params
     params.require(:cart_item).permit(:item_id, :amount)
   end
end
