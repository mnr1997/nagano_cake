class Public::CartItemsController < ApplicationController
  def index
    @cart_items = CartItem.all
  end
  
  def update
    
  end
  
  def destroy
    cart_item = CartItem.find(params[:id])
    cart_item.destroy!
    redirect_to cart_items_path
  end
  
  def destroy_all
    CartItem.destroy_all
    redirect_to cart_items_path
  end
  
  def create
    cart_item = CartItem.new(cart_item_params)
    cart_item.customer_id = current_customer.id
    cart_item.item_id = cart_item_params[:item_id]
    if cart_item.save
      redirect_to items_path
    else
      render :show
    end
  end
  
  private
  
  def cart_item_params
    params.require(:cart_item).permit(:customer_id, :item_id, :amount)
  end
end
