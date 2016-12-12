class WordsController < ApplicationController
  def index
    if !(session[:counter])
      session[:counter]=0
    end
  end
  def generate
    session[:counter]+=1
    session[:word] = Faker::Hipster.word
    redirect_to '/'
  end
end
