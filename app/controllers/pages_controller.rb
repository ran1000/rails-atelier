class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :about
  def home
  end

  def about
    @category = Category.find(params[:tag])
    @categories = Category.all
    if @categories.include?(@category)
      params[:tag] = @category.tag
    else
      params[:tag] = "Tag not included"
    end
  end
end
