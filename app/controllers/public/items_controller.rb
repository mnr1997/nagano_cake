class Public::ItemsController < PublicController
  def index
    @items = Item.all
    @genres = Genre.all
  end
  
  def show
    @item = Item.find(params[:id])
    @genres = Genre.all
  end
  
  private

  def post_params
    params.require(:post).permit(:image, :caption, animal_ids: [])
  end
end
