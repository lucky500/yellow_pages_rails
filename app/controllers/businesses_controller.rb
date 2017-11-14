class BusinessesController < ApplicationController
  def new
    @category = Category.find(params[:category_id])
    @business = @category.businesses.new
  end
end
