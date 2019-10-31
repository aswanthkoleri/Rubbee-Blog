class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  	@category = Category.all
  end
  
  def create
  	@post = Post.new(post_params)
  	if @post.save
  		redirect_to posts_path
  	else
  		render "new"
  	end
  end
  


  def edit

  end

  def show
  	@post = Post.find(params[:id])
  end
  def destroy
  	
  end
end

  private
  def post_params
    params.require(:post).permit(:title, :body, :category_id)
  end