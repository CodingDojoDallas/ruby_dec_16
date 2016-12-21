class ShoesController < ApplicationController
	def index
		@user = User.find(session[:user_id])
		@not_sold = Shoe.where(sold:false, seller:@user.id)
		@my_purchases = Shoe.where(sold:true, buyer:@user.id)
		@my_sales = Shoe.where(seller:@user.id, sold:true)
	end
	def create
		@user = User.find(session[:user_id])
		shoe = Shoe.new(product_params.merge(sold:false,user:@user,seller:@user, buyer:@user))
		if shoe.save
			flash[:success] = ['Post was successful']
		else
			flash[:shoe_errors]=shoe.errors.full_messages
		end
		redirect_to '/dashboard'
	end
	def show
		@user = User.find(session[:user_id])
		@shoes = Shoe.where.not(sold:true, seller:@user)
	end
	def update
		@user = User.find(session[:user_id])
		buy_shoe = Shoe.find(params[:id]).update(sold:true, buyer:@user)
		redirect_to '/dashboard'
	end
	def destroy
		shoe = Shoe.find(params[:id]).destroy
		redirect_to '/dashboard'
	end


	private
		def product_params
			params.require(:product).permit(:name, :ammount)
		end
end
