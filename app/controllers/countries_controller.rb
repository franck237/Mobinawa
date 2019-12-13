class CountriesController < ApplicationController

  def index
    @countries = Country.all
  end

  def show
    @countries = Country.all
    @country = Country.find(params[:id])
    @sectors = Sector.all
  end

  def new
    @country = Country.new
  end

  def create
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
