class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[about creative_fuel]
  def home
  end

  def about
    # @category = Category.find(params[:tag])
    # @categories = Category.all
    # if @categories.include?(@category)
    #   params[:tag] = @category.tag
    # else
    #   params[:tag] = "Tag not included"
    # end
  end

  def creative_fuel
    tags = %w[Places Façades Inspirations]
    @categories = []
    tags.each do |tag|
      @categories << Category.find_by(tag: tag)
    end
    @posts = []
    @categories.each do |category|
      category.posts.each do |category_post|
        @posts << category_post
      end
    end
  end
end
