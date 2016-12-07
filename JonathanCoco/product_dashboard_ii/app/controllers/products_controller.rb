class ProductsController < ApplicationController
  def index
    @products  = Product.all()
  end

  def show
    @product = Product.find(params[:id])

    render "/products/show"

  end

  def new
    @product  = Product.new
    @categories = Category.all()

    #render "/products/new"
  end

  def edit
    @product = Product.find(params[:id])
    @categories = Category.all()

    render "/products/edit"
  end

  def create
    flash[:name] = ""
    flash[:description] = ""
    flash[:pricing] = ""

    @product  = Product.new(product_params)

    #@product.name = params[:name]
    #@product.description = params[:description]
    #@product.pricing = params[:pricing]

    if @product.save()
      redirect_to '/products'
    else
      @product.errors.each do |attr, msg|

        if attr.to_s == "name"
          flash[:name] =  flash[:name] + " #{msg}, "
        elsif attr.to_s == "description"
          flash[:description] =  flash[:description] + " #{msg}, "
        elsif attr.to_s == "pricing"
          flash[:pricing] =  flash[:pricing] + " #{msg}, "
        end

      end
      render "/products/new"
    end

  end

  def update
    flash[:name] = ""
    flash[:description] = ""
    flash[:pricing] = ""

    @product = Product.find(params[:id])

    if (@product.update(product_params))
      redirect_to '/products'
    else

      @product.errors.each do |attr, msg|

        if attr.to_s == "name"
          flash[:name] =  flash[:name] + " #{msg}, "
        elsif attr.to_s == "description"
          flash[:description] =  flash[:description] + " #{msg}, "
        elsif attr.to_s == "pricing"
          flash[:pricing] =  flash[:pricing] + " #{msg}, "
        end

      end

      render "/products/new"
    end
  end

  def destroy
    product = Product.find(params[:id])

    product.destroy()

    redirect_to "/products"
  end

  private
  def product_params
    params.require(:product).permit(:name, :description, :pricing, :category_id)
  end
end
