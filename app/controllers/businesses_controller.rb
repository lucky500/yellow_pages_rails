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

  def show
    @category = Category.find(params[:category_id])
    @business = @category.businesses.find(params[:id])

    render :show
  end

  def edit
    @category = Category.find(params[:category_id])
    @business = @category.businesses.find(params[:id])

    render :edit
  end

  def update
    @category = Category.find(params[:category_id])
    @business = @category.businesses.find(params[:id])
    if @business.update(businesses_params)
      redirect_to category_path(@business.category)
    else
      :edit
    end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @business = @category.businesses.find(params[:id])
    if @business.destroy
      redirect_to category_path(@business.category)
    end
  end

private
  def businesses_params
    params.require(:business).permit(:name, :address, :city, :state, :zip, :phone_number, :website)
  end
end
