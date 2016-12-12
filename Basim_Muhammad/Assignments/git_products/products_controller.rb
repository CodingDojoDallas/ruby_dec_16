class ProductsController < ApplicationController
	# before_action :get_product, only: [:show, :edit, :update]
	before_action :get_product, except: [:index, :new, :create, :show]

	def index
		@products=Product.all
	end

	def new
		@product=Product.new
	end
	def create
		@product=Product.create(product_params)
	end
	def show
		@product=Product.find(params[:id])
		# @comments=Comment.where('product_id=@product.id')
		render 'show'
	end

	def edit
		# @product=Product.find(params[:id])
		render 'edit'
	end

	def update
		@product.update(product_params)
		if @product.errors.any?
			flash[:errors]=@product.errors.full_messages
			redirect_to edit_product_path(@product)

		else
			redirect_to product_path(@product)
		end
	end

	def destroy
		@product.destroy
		redirect_to products_path
	end

	def comment
		Comment.create(comment_params)
		redirect_to product_path(@product)
	end

	private

	def product_params
		params.require(:product).permit(:name, :description,:price,:category_id)
	end

	def get_product
		@product=Product.find(params[:id])
	end

	def comment_params
		params.require(:comment).permit(:content,:product_id)
	end
end
