class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @posts = Post.all
  end

  def category
  end
end
