module ApplicationHelper
	def full_title(title = '')
		base_title = "Members Only Club"
		return base_title if title.empty?
		"#{title} | #{base_title}"
	end
end
