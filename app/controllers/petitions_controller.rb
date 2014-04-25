class PetitionsController < InheritedResources::Base
	actions :new, :create, :index

	def index
		render :partial => 'count'
	end

	def permitted_params
  	params.permit(:petition => [:first_name, :last_name, :email])
	end

end
