class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @recommendations = Recommendation.order("RANDOM()").limit(1)
  end
end
