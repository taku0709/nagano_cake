class Public::SessionsController < ApplicationController
  before_action :authenticate_customer!
end
