class AdminsController < ApplicationController
	before_action :set_admin, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, only: [:show]
  before_action :only_your_profile_page, only: [:show]

  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :set_locale

  def index
    @admins = Admin.all
  end

  def show
  end

  def new
    @admin = Admin.new
  end

  def edit
  end

  def create
    @admin = Admin.new(admin_params)
      if @admin.save
        redirect_to @admin, notice: 'Admin was successfully created.'
      else
        render 'new'
      end
  end

  def update
    respond_to
      if @admin.update(admin_params)
         redirect_to @admin_path, notice: 'Admin was successfully updated.'
      else
        render 'edit'
      end
  end

  def destroy
    @admin.destroy
      redirect_to admins_url, notice: 'Admin was successfully destroyed.' 
  end

  private

  def configure_devise_parameters
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:firstname, :lastname, :email, :number,:function, :country_id, :password, :password_confirmation, :photo_admin)}
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:firstname, :lastname, :email, :number,:function, :country_id, :password, :password_confirmation, :current_password, :photo_admin)}
  end

  def set_locale
    I18n.locale = "fr"
  end 

  # Use callbacks to share common setup or constraints between actions.
  def set_admin
    @admin = Admin.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def admin_params
    params.require(:admin).permit(:firstname, :lastname, :number, :function, :email, :encrypted_password, :country_id, :photo_admin)
  end

  #An admin can not acces the dashboard of another admin
  def only_your_profile_page
    @admin = Admin.find(params[:id])

    if current_admin != @admin
      redirect_to sectors_path, notice: "Access denied! You can only view your own profile page."
    end
  end
end