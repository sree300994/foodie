class UpcomingEventsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]
	before_action :check_is_admin, except: [:index, :show]
	def index
		@upcoming_events = UpcomingEvent.all
	end

	def new
		@upcoming_event = UpcomingEvent.new
	end

	def create
		@upcoming_event = UpcomingEvent.new(params[:upcoming_event].permit(:name, :date, :description))
		if @upcoming_event.save
			redirect_to upcoming_events_path
		else
			render action: "new"
		end
	end

	def show
		@upcoming_event = UpcomingEvent.find(params[:id])
	end

	def edit
		@upcoming_event = UpcomingEvent.find(params[:id])
	end

	def update
		@upcoming_event = UpcomingEvent.find(params[:id])
		if @upcoming_event.update_attributes(params[:upcoming_event].permit(:name, :date, :description))
			redirect_to upcoming_event_path
		else
			render action: "edit"
		end
	end

	def destroy
		@upcoming_event = UpcomingEvent.find(params[:id])
		if @upcoming_event.destroy
			redirect_to upcoming_events_path
		end
	end
end
