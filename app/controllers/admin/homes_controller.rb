class Admin::HomesController < ApplicationController
  before_action :authenticate_admin!
  layout "admin"
  
end
