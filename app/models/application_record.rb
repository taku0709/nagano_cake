class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  before_action :configure_permitted_parameters, if: :devise_contoroller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,keys:[:first_name, :last_name, :kana_first_name, :kana_last_name, :email, :postal_code, :address, :telephone_number])
  end
end
