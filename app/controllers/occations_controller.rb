class OccationsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]
	before_action :check_is_admin, except: [:index, :show]
	def index
		@occations = Occation.all
	end

	def new
		@occation = Occation.new
	end

	def create
		@occation = Occation.new(params[:occation].permit(:name))
		if @occation.save
			redirect_to occations_path
		else
			render action: "new"
		end
	end

	def show
		@occation = Occation.find(params[:id])
	end

	def edit
		@occation = Occation.find(params[:id])
	end

	def update
		@occation = Occation.find(params[:id])
		if @occation.update_attributes(params[:occation].permit(:name))
			redirect_to occation_path 
		else
			render action: "edit"
		end
	end

	def destroy
		@occation = Occation.find(params[:id])
		if @occation.destroy
			redirect_to occations_path
		end
	end
end
