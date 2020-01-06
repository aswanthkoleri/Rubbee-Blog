class ApplicationController < ActionController::Base
	helper_method :all_categories
	# This method is to make the Category list available to all the pages in the application
	def all_categories
		@categories = Category.all
	end
end
