class Admin::HomesController < AdminController
  before_action :authenticate_admin!
  layout "admin"
  
end
