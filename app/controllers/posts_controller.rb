class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
  	@posts = Post.all
  end

  def new
    # @post = Post.new
  	@post = current_user.posts.build
  	@category = Category.all
  end
  
  def create
    @post = current_user.posts.build(post_params)
  	# @post = Post.new(post_params)
  	if @post.save
  		redirect_to posts_path, :notice => "The post is created"
  	else
  		render "new"
  	end
  end
  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_path, :notice => "The post is updated"
    else
      render "edit"
    end
  end
  def show
  	@post = Post.find(params[:id])
  end
  def destroy
  	@post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path, :notice => "The post is deleted"
  end
end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end