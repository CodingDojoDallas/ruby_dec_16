class PersonsController < ApplicationController
  def index
	  render json: Person.all
  end
	def new
		render 'new'
	end
	def create
		Person.create(name: Faker::Name.name)
		redirect_to '/'
	end
	def show
		render json: Person.find(params[:id])
	end
	def edit
		 @person = Person.find(params[:id])
		render 'edit'
	end
	def counter
		render json: Person.count
	end
end
