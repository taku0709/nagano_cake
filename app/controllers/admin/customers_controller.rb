class Admin::CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end
  
  def show
    @cutomer = Customer.find(params[:id])
  end
end
