class SurveysController < ApplicationController
	def index
		@locations = ['Dallas', 'San Jose']
		@languages = ['PHP', 'Ruby']
	end

	def create
		session['form_data'] = survey_params
		redirect_to '/info'
	end

	def info

	end

	private
		def survey_params
			params.require(:survey).permit(:name, :location, :language, :comment)
		end
end
