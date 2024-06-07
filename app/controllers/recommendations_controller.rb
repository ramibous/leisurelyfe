class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all
    @recommendations = @recommendations.where(kid_friendly: true) if params[:kid_friendly] == "1"
    @recommendations = @recommendations.where(dog_friendly: true) if params[:dog_friendly] == "1"
  end

  def show
    @recommendation = Recommendation.find(params[:id])
    @quote = Faker::Quote.matz
  end
end
