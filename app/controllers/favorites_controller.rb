class FavoritesController < ApplicationController
  before_action :authenticate_user!

  def index
    @favorites = current_user.favorites
  end

  def create
    @recommendation = Recommendation.find(params[:recommendation_id])
    current_user.favorite(@recommendation)
    render json: { status: "added" }
  end

  def destroy
    @recommendation = Recommendation.find(params[:recommendation_id])
    current_user.unfavorite(@recommendation)
    render json: { status: "removed" }
  end
end
