class SeriseController < ApplicationController
  def index
    @serises = Serise.all
    @posts = Post.all
  end

  def show
    @serise = Serise.find(params[:id])
  end
end
