class InsertFavController < ApplicationController
  def create
    Favorites.create fav: params[:fav]
    redirect_to "/create"
  end
end
