class Public::ItemsController < PublicController
  def index
    @items = Item.all
    @genres = Genre.all
  end
  
  def show
    @item = Item.find(params[:id])
    @genres = Genre.all
    @cart_item = CartItem.new(cart_item_params)
    if @cart_item.save
      redirect_to items_path
    else
      render :show
    end
  end
  
  private

  def cart_item_params
    params.require(:cart_item).permit(:item_id, :customer_id, :amount)
  end
end
