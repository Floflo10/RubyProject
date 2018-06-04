class FavoritesController < ApplicationController

  def index
    @favorite = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.valid?
      @favorite.save!
      redirect_to favorite_path(@favorite)
    else
      render :new
    end
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user, :travel)
  end


end
