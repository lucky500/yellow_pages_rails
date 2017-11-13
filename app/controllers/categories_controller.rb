class CategoriesController < ApplicationController
  def home
    @categories = Category.all
    render :home
  end

  def about

  end
end
