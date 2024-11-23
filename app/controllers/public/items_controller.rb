class Public::ItemsController < PublicController
  def index
    @items = Item.all
    @genres = Genre.all
  end
end
