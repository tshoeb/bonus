module ApplicationHelper
	def full_title
  		@title ? "Residencies | #{@title}" : "Residency | Joy v Talz"
  	end
end
