class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :find_post, only: :show

  def index
    @posts = Post.all
  end

  def show
  end

  def category
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end
end
