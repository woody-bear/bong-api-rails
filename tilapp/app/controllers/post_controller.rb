class PostController < ApplicationController
  def index
    @posts = Post.all
    # return render json: {}
  end

  def show
    @post = Post.find(params[:id])
  end
end
