class PostsController < ApplicationController
  before_action :require_login, only: [:new, :create]

  private

  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
        redirect_to @post 
        else
            render:new 
        end
    end
  end

  def post_params 
    params.require(:post).permit(:title, :body)
  end

end
