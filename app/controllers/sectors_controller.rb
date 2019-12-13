class SectorsController < ApplicationController
  def index
    @sectors = Sector.all 
    @countries = Country.all
    @country = Country.find(params[:country_id])
  end

  def show
    @country = Country.find(params[:country_id])
    @sector = Sector.find(params[:id])
    @companies = @sector.companies.where(country_id: @country.id).order(:name)
  end

  def new
    @sector = Sector.new
  end

  def create
    @sector = Sector.new(name: params[:name], icon: params[:icon])
      if @sector.save
        redirect_to sector_path(@sector.id)
      else
        render 'new'
      end
  end

  def edit
  end

  def update
  end

  def destroy
    @sector = Sector.destroy
  end
end
