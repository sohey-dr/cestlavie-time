module ApplicationHelper
  def when_day
    current_page?(root_path) ? content_tag(:a, '2日目', href: "/second", class: 'nav-link') : content_tag(:a, '1日目',  href: "/", class: 'nav-link')
  end
end
