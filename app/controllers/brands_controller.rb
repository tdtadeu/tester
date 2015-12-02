class BrandsController < ApplicationController
  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
  end

  def edit
    @brand = Brand.find params[:id]
  end

  def show
    @brand = Brand.find params[:id]
  rescue ActiveRecord::RecordNotFound
    redirect_to brands_path, alert: "Record Not found!"
  end

  def create
    @brand = Brand.new brand_params

    if @brand.save
      redirect_to brands_path, alert: "Record created!"
    else
      render :new
    end
  end

  def update
    @brand = Brand.find params[:id]

    if @brand.update brand_params
      redirect_to brands_path, alert: "Record updated!"
    else
      render :new
    end
  end

  def destroy
    brand = Brand.find params[:id]
    brand.destroy
    redirect_to brands_path, alert: "Record #{brand.name} destroyed!"
  end

  private

  def brand_params
    params.require(:brand).permit(:name, :sms, :logo)
  end
end
