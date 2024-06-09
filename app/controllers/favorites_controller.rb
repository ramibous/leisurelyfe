class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def create
    @favorite = Favorite.create(favorite_params)
  end

  def destroy
    @favorite = Favorite.find(params[:id]).destroy
  end

  private

  def favorite_params
    params.require(:favorite).permit(:recommendation_id, :user_id)
  end
end
