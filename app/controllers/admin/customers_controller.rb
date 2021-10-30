class Admin::CustomersController < ApplicationController

  def index
    @customres = Customer.all
  end
end
