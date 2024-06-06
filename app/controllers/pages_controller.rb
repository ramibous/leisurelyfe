require "json"
require "open-uri"

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # headers = { "Accept" => "application/json", "Authorization" => "Bearer EyOrwdpA4rhnJ7wQ-uTvHmZ8f5fdaItMsw3hRH2n" }
    # response = URI.open("https://api.predicthq.com/v1/events/?category=school-holidays%2Cpublic-holidays%2Cperforming-arts%2Cconferences%2Cexpos%2Cfestivals%2Cconcerts%2Csports%2Ccommunity%2Cdaylight-savings&country=CA&limit=100&local_rank.lte=50&place.scope=6077243&rank.lte=50&relevance=local_rank", headers).read
    # @data = JSON.parse(response)
    # @events = JSON.parse(response)["results"].map do |event|
    #   {
    #     title: event["title"],
    #     description: event["description"],
    #     category: event["category"].capitalize,
    #     start: event["start"],
    #     end: event["end"]
    #   }
    # end
    # # File.open('predict_hq_saturday_june_eight_data.json', 'w') do |f|
    # #   f.write(@data)
    # # end
  end
end
