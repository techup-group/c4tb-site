module ApplicationHelper
  def nav_link(link_text, link_path, options=nil)
    class_name = current_page?(link_path) ? 'active' : ''
    if options != nil && options[:li_class] != nil
      class_name += ' ' + options[:li_class]
      options[:li_class] = nil
    end
    content_tag(:li, :class => class_name) do
      link_to link_text, link_path, options
    end
  end
end
