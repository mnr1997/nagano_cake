class PublicController < ApplicationController
  before_action :configure_permitted_parameters, if: :devise_controller?

  #protected
  
end