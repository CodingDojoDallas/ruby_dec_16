class SurveyController < ApplicationController

    def index
        if session[:name] == nil
            session[:name] = ''
            session[:location] = ''
            session[:language] = ''
            session[:comment] = ''

            flash[:submission_count] = 0
        end
    end

    def process_survey

        session[:name] = params[:name]
        session[:location] = params[:location]
        session[:language] = params[:language]
        session[:comment] = params[:comment]

        flash[:submission_count] = flash[:submission_count] + 1
    end

    def reset

        session.clear

        redirect_to '/'
    end
end
