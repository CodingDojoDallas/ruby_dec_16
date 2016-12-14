class SurveysController < ApplicationController
  def index
  end
  def save
    session[:user] = survey_params
    if !(session[:submit])
      session[:submit]=1
    else
      session[:submit]+=1
    end
    redirect_to '/results'
  end
  def show
  end
  private
    def survey_params
      params.require(:survey).permit(:name, :location, :language, :comment)
    end
end
