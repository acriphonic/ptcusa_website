class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:notice] = "Successfully created product."
      redirect_to @product
    else
      render :action => 'new'
    end
  end

  def update
    if @product.update(product_params)
      flash[:notice] = "Successfully updated product."
      redirect_to @product
    else
      render :action => 'edit'
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = 'Successfully destroyed product.'
    redirect_to products_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:name, :picture, :category, resource_attributes: [:id, :name, :version, :filepath, :_destroy], application_attributes: [:id, :description, :_destroy], feature_attributes: [:id, :description, :_destroy])
    end
end
