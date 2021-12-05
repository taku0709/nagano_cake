class Admin::OrdersController < ApplicationController
 before_action :authenticate_admin!
 def show
  @order_details = Order_detail.all
  @order = Order.find(params[:id])
 end
end
