class CompaniesController < ApplicationController
  before_action :set_company, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]
  before_action :only_your_profile_page, only: [:new, :edit, :update, :destroy]

  def index
    @companies = Company.all
  end

  def show
    @products = @company.products.order(:title)
  end

  def new
    @company = Company.new
  end

  def create
    @admin = Admin.find(params[:admin_id])
    @company = Company.new(company_params)
    @company.admin_id = @admin.id
    @company.status = 0
    @company.country_id = @admin.country_id
      if @company.save
        redirect_to @admin, notice: 'Your Company was successfully created.'
      else
        render 'new'
      end
  end

  def edit
    @admin = Admin.find(params[:admin_id])
  end

  def update
    #respond_to
      if @company.update(company_params)
         redirect_to admin_company_path, notice: 'Company was successfully updated.'
      else
        render 'edit'
      end
  end

  def destroy
    @company = Company.destroy
  end

  def search
    @companies = Company.all.order(:name)
    if params[:search].blank?
      flash[:alert] = "Empty field!"
      redirect_to companies_path
      return
    else
      @parameter = params[:search].downcase  
      @results = Company.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")  
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_company
    @company = Company.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def company_params
    params.require(:company).permit(:number, :name, :email, :website, :logo, :description, :sub_sector_id, :admin_id, :country_id, :upload_logo, photo_companies: [], sub_sectors_attributes: [:sector])
  end

   #An admin can not acces the dashboard of another admin
  def only_your_profile_page
    @admin = Admin.find(params[:admin_id])

    if current_admin != @admin
      redirect_to sectors_path, notice: "Access denied! You can only view your own profile page."
    end
  end
end
