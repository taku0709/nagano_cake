class Admin::OrdersController < ApplicationController
 def show
  @order_details = Order_detail.all
  @order = Order.find(params[:id])
 end
end
