class Public::ItemsController < ApplicationController
  def index
   @items = Item.all
  end

  def show
   @item = Item.find(params[:id])
  end

  private

   def cart_item_params
     params.require(:cart_item).permit(:item_id, :amount)
   end

end
