class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def category
  end
end
