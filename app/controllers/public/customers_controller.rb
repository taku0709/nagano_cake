class Public::CustomersController < ApplicationController
 before_action :authenticate_customer!

 def show
  @customer = current_customer
 end

 def edit
  @customer = current_customer
 end

 def update
  @customer = current_customer
  @customer.update(customer_params)
  redirect_to public_customers_path
 end

 def unsubscribe
  @customer = Customer.find(params[:id])
 end

 def withdraw
  @customer = Customer.find(params[:id])
  @customer.update(is_active: true)
  reset_session
  redirect_to root_path

 end

 private

 def customer_params
  params.require(:customer).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :email, :postal_code, :address, :telephone_number)
 end
end
