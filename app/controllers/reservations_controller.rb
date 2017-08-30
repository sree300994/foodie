class ReservationsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	before_action :check_is_admin, except: [:admin, :show]

	def index
		@reservations = Reservation.all
	end

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new(params[:reservation].permit(:name, :email, :occation_id, :message, :occation_date))
		if @reservation.save
			redirect_to reservations_path
		else
			render action: "new"
		end
	end

	def show
		@reservation = Reservation.find(params[:id])
	end

	def edit
		@reservation = Reservation.find(params[:id])
	end

	def update
		@reservation = Reservation.find(params[:id])
		if @reservation.update_attributes(params[:reservation].permit(:name, :email, :occation_id, :message, :occation_date))
			redirect_to reservations_path
		else
			render action: "edit"
		end
	end

	def destroy
		@reservation = Reservation.find(params[:id])
		if @reservation.destroy
			redirect_to reservations_path
		end
	end
end
