class PublicController < ApplicationController
  before_action :authenticate_customer!
  before_action :configure_permitted_parameters, if: :devise_controller?

  #protected
  
end