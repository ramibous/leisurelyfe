class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all

    if params[:query].present?
      @recommendations = @recommendations.search_by_name(params[:query])
    end

    if params[:category].present?
      @recommendations = @recommendations.where(category: params[:category])
    end

    if params[:label].present?
      @recommendations = @recommendations.where(label: params[:label])
    end

    if params[:min_price].present? && params[:max_price].present?
      @recommendations = @recommendations.where(price: params[:min_price]..params[:max_price])
    end

    @recommendations = @recommendations.where(kid_friendly: true) if params[:kid_friendly] == "1"
    @recommendations = @recommendations.where(dog_friendly: true) if params[:dog_friendly] == "1"

    if params[:guests].present? && params[:guests].to_i > 0
      @recommendations = @recommendations.where('max_guests >= ?', params[:guests])
    end
  end

  def show
    @recommendation = Recommendation.find(params[:id])
    @quote = Faker::Quote.matz
    @recommendations = Recommendation.where(category: @recommendation.category).where.not(id: @recommendation.id).limit(4)
  end
end
