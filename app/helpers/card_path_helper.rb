module CardPathHelper
  def get_recommendation_card_page
    case request.path
      when '/' then 'home'
      when '/recommendations' then 'search_results'
      when '/favorites' then 'favorite'
      else ''
    end
  end
end
