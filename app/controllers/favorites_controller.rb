class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites
  end

  def toggle
    @recommendation = Recommendation.find(params[:recommendation_id])
    @existing_recommendation = current_user.favorites.find_by(recommendation: @recommendation)

    if @existing_recommendation
      destroy
      render json: { status: "removed" }
    else
      create
      render json: { status: "added" }
    end
  end

  def destroy
    @existing_recommendation.destroy
  end

  private

  def create
    @favorite = Favorite.new(
      user: current_user,
      recommendation: @recommendation
    )
    @favorite.save
  end
end
