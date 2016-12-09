class EventsController < ApplicationController
	def index
		@in_state_events = Event.where(state: current_user.state).includes(:host, :users)
		@out_of_state_events = Event.where.not(state: current_user.state).includes(:host, :users, :state)
	end

	def create
		Event.create(
			event_params.merge({
				state: State.find(event_params[:state]),
				host: current_user
			})
		)
		redirect_to '/events'
	end

	private
		def event_params
			params.require(:event).permit(:name, :date, :city, :state)
		end
end
