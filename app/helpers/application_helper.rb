module ApplicationHelper

	def beautify_params key, value = nil, key_width = 200, opts = {}
		if value
			contents = content_tag(
					'b', key, :class => "fl #{opts[:key_class]}", :style => "width:#{key_width}px; #{opts[:key_style]}"
				) + content_tag(
					'div', value, :class => "light_text #{opts[:value_class]}", :style => "margin-left:#{key_width+10}px;  #{opts[:value_style]}"
				)
			
			return content_tag( 
				'div', contents, :class => 'beautify_params'
			)
		end
	end

	def image_radius size = 5
		"-webkit-border-radius: #{size}px; -moz-border-radius: #{size}px; border-radius: #{size}px;"
	end

	def progress_bar percent, rate
		progress = content_tag(
			:div, content_tag(:div, '', :style => "width:#{percent}%", :class => 'progress'), :class => 'progress_cover fl'
		)

		rating = content_tag( :div, "#{rate} out of 10", :class => 'rating fl' )
		clear = content_tag( :div, '', :class => 'clearfix' )
		return progress + rating + clear
	end
	
end
