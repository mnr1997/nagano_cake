class Public::CustomersController < ApplicationController
  def show
    
  end
  
  def unsubscribe
    
  end
  
  def withdraw
    customer = Customer.find(current_user.id)
    customer.update(is_active: false)
    redirect_to root_path
  end
end
