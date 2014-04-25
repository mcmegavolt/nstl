class  HomeController < ApplicationController
	
	def index
		@petition_count = Petition.count
	end

end
