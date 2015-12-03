class PartnersController < ApplicationController
  def index
    @partners = brand.partners
  end

  def show
    @partner = brand.partners.find params[:id]
  end

  def new
    @partner = brand.partners.new
  end

  def edit
    @partner = brand.partners.find params[:id]
  end

  def create
    @partner = brand.partners.new partner_params

    if @partner.save
      redirect_to brands_path, alert: "Partner saved"
    else
      render :new
    end
  end

  def update
    @partner = brand.partners.find params[:id]

    if @partner.update partner_params
      redirect_to brands_path, alert: "Partner saved"
    else
      render :edit
    end
  end

  def destroy
    brand.partners.delete params[:id]
  end

  private

  def brand
    @brand ||= Brand.find params[:brand_id]
  end

  def partner_params
    params.require(:partner).permit(:logo, :url, :partner_type, :stock_type)
  end
end
