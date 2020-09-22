class PostController < ApplicationController
  def index
    @posts = Post.all
    # return render json: {}
  end
end
