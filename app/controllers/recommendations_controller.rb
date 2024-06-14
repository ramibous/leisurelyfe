class RecommendationsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @recommendations = Recommendation.all

    if params[:query].present?
      @recommendations = @recommendations.search_by_name(params[:query])
    end

    if params[:category].present? && params[:category] != 'all'
      @recommendations = @recommendations.where(category: params[:category])
    end

    if params[:label].present?
      @recommendations = @recommendations.where(label: params[:label])
    end

    if params[:min_price].present? && params[:max_price].present?
      @recommendations = @recommendations.where(price: params[:min_price]..params[:max_price])
    end

    if params[:kid_friendly] == "1"
      @recommendations = @recommendations.where(kid_friendly: true)
    end

    if params[:dog_friendly] == "1"
      @recommendations = @recommendations.where(dog_friendly: true)
    end

    # if params[:guests].present? && params[:guests].to_i > 0
    #   @recommendations = @recommendations.where('max_guests >= ?', params[:guests])
    # end

    @counts = @recommendations.count
    # Paginary
    @recommendations = @recommendations.page params[:page]

    # Prepare markers for the map
    @markers = @recommendations.map do |recommendation|
      {
        lat: recommendation.latitude,
        lng: recommendation.longitude,
        info_window_html: render_to_string(partial: "recommendations/info_window", locals: { recommendation: recommendation }),
        marker_html: render_to_string(partial: "recommendations/marker", locals: { recommendation: recommendation }),
        image_url: recommendation.image_url
      }
    end
  end

  def show
    @recommendation = Recommendation.find(params[:id])
    @quote = Faker::Quote.matz
    @recommendations = Recommendation
                       .where(category: @recommendation.category)
                       .where.not(id: @recommendation.id)
                       .order("RANDOM()")
                       .limit(4)

    # This is for the map
    @markers = [{
      lat: @recommendation.latitude,
      lng: @recommendation.longitude,
      info_window_html: render_to_string(partial: "recommendations/info_window", locals: { recommendation: @recommendation }),
      marker_html: render_to_string(partial: "recommendations/marker", locals: { recommendation: @recommendation }),
      image_url: @recommendation.image_url
    }]
  end
end
