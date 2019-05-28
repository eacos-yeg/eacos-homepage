module AssetHelpers
  def icon(kind, options={})
    kind = kind.to_s.gsub(/[\-\s]/, "_")
    options[:class] ||= ""
    options[:class].concat(" drugbank-icon icon-#{kind}").strip
    svg = "<svg class=\"icon\" role=\"img\" title=\"#{kind}\" viewBox=\"0 0 20 20\">\
     <use xlink:href=\"#{image_path("icons/Icon_#{kind.camelize}.svg")}##{kind}\" width=\"20\" height=\"20\">\
     </use></svg>".html_safe
    content_tag(:div, svg, options)
  end

  def social_icon(kind, options={})
    options[:class] ||= ""
    options[:class].concat(" drugbank-icon icon-#{kind}")
    svg = "<svg class=\"icon\" role=\"img\" title=\"#{kind}\">\
     <use xlink:href=\"#{image_path('social_icons.svg')}##{kind}\">\
     </use></svg>".html_safe
    content_tag(:div, svg, options)
  end


end
