class Public::RegistrationsController < ApplicationController
  before_action :authenticate_customer!
end
