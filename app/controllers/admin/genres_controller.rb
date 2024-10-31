class Admin::GenresController < ApplicationController
  def index
    @genres = Genre.all
  end
  
  def create
    @genre = Genre.new(genre_params)
    if @genre.save
      redirect_to admin_genres_path
    else
      @genres = Genre.all
      render :index
    end
  end

  def edit
  end
  
  def genre_params
    params.repuire(:genre).permit(:name)
  end
end
