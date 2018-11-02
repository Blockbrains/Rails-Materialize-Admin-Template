module ApplicationHelper
  def flash_class(level)
    case level
    when 'info' then "blue-alert"
    when 'notice' then "green-alert"
    when 'error 'then "red-alert"
    when 'alert' then "red-alert"
    end
  end

  def bc_link(name, link = nil)
      if link
          link_to link, class: 'breadcrumb' do
              name
          end
      else
          content_tag :span, class: 'breadcrumb', itemprop: 'title' do
              name
          end
      end
  end

  def icon(name, add_class = '')
      content_tag :i, class: "material-icons #{add_class}" do
          name
      end
  end
end
