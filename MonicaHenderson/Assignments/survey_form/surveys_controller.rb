class SurveysController < ApplicationController
  def index
    @locations = ['Dallas', 'San Jose', 'Seattle', 'South Africa']
    @languages = ['PHP', 'Ruby', 'Python', 'JavaScript']
  end

  def create
     Survey.create(survey_params)
     session['form_data'] = survey_params  #params[:survey]
    redirect_to '/result'
  end

  def result
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
    @counter = session[:counter]

  end


  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment) #If someone tries to inject another key into our program, our db will NOT accept it.
    end

end
