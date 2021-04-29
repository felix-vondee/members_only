class PostsController < ApplicationController
  before_action only: [:new, :create]
 
  def index
    @posts = Post.all
  end
  

  # def require_login
  #   unless logged_in?
  #     flash[:error] = "You must be logged in to access this section"
  #     redirect_to new_login_url # halts request cycle
  #   end
  # end

  def new
    @post = Post.new
  end

  def create 
    @post = Post.new(post_params)
    @post.user_id = 1
    if @post.save
        redirect_to @post 
    else
        render:new 
    end
  end

  private

  def post_params 
    params.require(:post).permit(:title, :body, :user)
  end

end
