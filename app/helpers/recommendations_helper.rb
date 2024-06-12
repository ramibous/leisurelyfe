module RecommendationsHelper
  def icon_for_category(category)
    case category
    when 'restaurant'
      'fas fa-utensils'
    when 'park'
      'fas fa-tree'
    when 'museum'
      'fas fa-landmark'
    else
      'fas fa-question-circle'
    end
  end
end
