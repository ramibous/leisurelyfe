class RecommendationsController < ApplicationController
  def index
    @recommendations = Recommendation.all.includes(images_attachments: :blob)
  end

  def show
    @recommendation = Recommendation.find(params[:id])
  end
end
