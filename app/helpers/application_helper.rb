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

  def nav_dropdown(text, options=nil, &block)
    class_name = 'dropdown'
    if options != nil && options[:li_class] != nil
      class_name += ' ' + options[:li_class]
      options[:li_class] = nil
    end
    content_tag :li, :class => class_name do
      link_to('#', :class => 'dropdown-toggle', 'data-toggle' => 'dropdown' ) do
        concat text
        concat content_tag :span, nil, class: 'caret'
      end +
      content_tag(:ul, :class => 'dropdown-menu', :role => 'menu') do
        if block_given?
          block.call
        end
      end
    end
  end

end
