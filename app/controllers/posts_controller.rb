class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show category]
  before_action :find_post, only: %i[show edit patch delete]

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
    if @post.save
      redirect_to reserved_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def patch
    @post.update(params[:post])
  end

  def delete
    @post.destroy
    redirect_to reserved_path, status: :see_other
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
    params.require(:post).permit(:title, :text, photos: [])
  end
end
