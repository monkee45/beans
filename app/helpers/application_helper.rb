module ApplicationHelper

  def nav_link_to(text, url)
    classes = ["button"]
    if current_page?(url)
      classes << "active"
    end

    link_to(text, url, class: classes.join(' '))
  end
end
