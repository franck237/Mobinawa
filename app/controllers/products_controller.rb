class ProductsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  before_action :set_company_and_admin, except: [:index, :show]

  def index
    @products = Product.all 
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.company_id = @company.id
    @product.status = 0
    if @product.upload_image.attached?
    @product.image_product = @product.upload_image
    end
      if @product.save
        redirect_to admin_path(@admin), notice: 'Product was successfully created.'
      else
        render 'new'
      end
  end

  def edit
  end

  def update
    if @product.update(product_params)
         redirect_to admin_path(@admin), notice: 'Product was successfully updated.'
      else
        render 'edit'
    end
  end

  def destroy
    @product = Product.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company_and_admin
    @company = Company.find(params[:company_id])
    @admin = Admin.find(@company.admin_id)
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:title, :description, :price, :image_product, :quantity, :status, :upload_image, photo_products: [])
  end
end
