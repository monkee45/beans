module HousesHelper

  def format_cafe_category(cafe)
    case
    when cafe.small?
      'Small'
    when cafe.medium?
      'Medium'
    when cafe.large?
      'Large'
    else
      'Unknown'
    end
  end

  def image_for(cafe)
    if cafe.image_file_name.blank?
      image_tag('mycafe.png')
    else
      image_tag(cafe.image_file_name)
    end
  end

end
