class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user, only: [:edit, :update, :destroy, :create]

  def index
    @products = Product.all.order("name")
  end

  def show
    @products = Product.all.order("name")
  end

  def new
    @product = Product.new
    feature = @product.features.build
    application = @product.applications.build
    resource = @product.resources.build
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
      params.require(:product).permit(:name, :picture, :category, resources_attributes: [:downloadable_id, :id, :name, :version, :filepath, :_destroy], applications_attributes: [:product_id, :id, :description, :_destroy], features_attributes: [:product_id, :id, :description, :_destroy])
    end
end
