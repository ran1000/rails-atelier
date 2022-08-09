class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show category]
  before_action :find_post, only: :show

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save!
  end

  def category
    @category = Category.find_by(tag: params[:tag])
    @posts = @category.posts
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :text, :photos)
  end
end
