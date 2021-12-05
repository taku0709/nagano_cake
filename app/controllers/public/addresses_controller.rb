class Public::AddressesController < ApplicationController
 before_action :authenticate_customer!

 def index
   @addresses = Address.all
   @address = Address.new
 end

 def create
   @address = Address.new(address_params)
   @address.customer = current_customer
   @address.save
   redirect_to public_addressese_path
 end


 def edit
   @address = Address.find(params[:id])
 end

 def update
   @address = Address.find(params[:id])
   @address.update
   redirect_to public_addresses_path
 end

 def destroy
   @address = Address.find(params[:id])
   @address.destroy
   redirect_to public_addresses_path
 end

 private

 def address_params
   params.require(:address).permit(:name, :address, :postal_code)
 end

end
