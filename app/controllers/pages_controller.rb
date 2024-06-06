require "json"
require "open-uri"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    headers = { "Accept" => "application/json", "Authorization" => "Bearer EyOrwdpA4rhnJ7wQ-uTvHmZ8f5fdaItMsw3hRH2n" }
    response = URI.open("https://api.predicthq.com/v1/events/?country=CA&place.scope=6077243", headers).read
    @data = JSON.parse(response)
    # @datas = @data["results"].map { |result| result["title"] }
    @events = JSON.parse(response)["results"].map do |event|
      {
        title: event["title"],
        description: event["description"],
        category: event["category"]
      }
    end
  end
end
