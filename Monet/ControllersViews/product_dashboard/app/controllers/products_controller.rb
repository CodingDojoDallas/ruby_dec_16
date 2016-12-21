class ProductsController < ApplicationController
	def index
		@products = Product.all
		if !flash[:success]
			flash[:success]=""
		end
	end
	def new
		if !flash[:errors]
			flash[:errors]=""
		end
	end
	def create
		@product = Product.create(product_params)
		if @product.errors.any?
			flash[:error]=@product.errors.full_message
			redirect_to "/products/new"
		else
			flash[:success]="Product added successfully"
			redirect_to "/products"
		end
	end
	def show
		@product = Product.find(params[:id])
	end
	def edit
		if !flash[:errors]
			flash[:errors]=""
		end
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		if @product.update(product_params)
			flash[:success]="Product updated successfully"
			redirect_to "/products"
		else
			flash[:errors] = @product.errors.full_messages
			redirect_to "/products/#{params[:id]}/edit"
		end
		
	end
	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		redirect_to "/products"
	end



	private
	def product_params
		params.require(:product).permit(:name,:description,:pricing)
	end
end
