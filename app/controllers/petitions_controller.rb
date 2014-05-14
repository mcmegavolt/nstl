class PetitionsController < InheritedResources::Base
	
	actions :new, :create, :index

	def index
		render :partial => 'count'
	end

	def validate

	  if Petition.find_by_email(params[:petition][:email])
	    @errors = true
	  else
	    @errors = "Email exist, sory..."
	  end

		respond_to do |format|
		  format.json { render json: @errors }
		end

	end

	def permitted_params
  	params.permit(:petition => [:first_name, :last_name, :email])
	end

end
