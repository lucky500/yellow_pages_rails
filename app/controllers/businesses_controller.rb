class BusinessesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new
  end

  def create
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new(businesses_params)
    if @business.save
      redirect_to category_path(@business.category)
    else
      render :new
    end
  end

private
  def businesses_params
    params.require(:business).permit(:name, :address, :city, :state, :zip, :phone_number, :website)
  end
end
