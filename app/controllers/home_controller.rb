class HomeController < ApplicationController

	def index
		@home = 'active'
	end

	def about
		@about = 'active'
	end

	def skills
		@skills = 'active'
	end

	def resume
		@resume = 'active'
	end

	def contact
		@contact = 'active'
	end

end