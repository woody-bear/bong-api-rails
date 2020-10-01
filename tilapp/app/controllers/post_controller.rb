class PostController < ApplicationController
  def index
    @posts = Post.all.where(use_yn: "Y").order(til_id: :desc)
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @post.created_at = Time.now
    @post.updated_at = Time.now
    @post.save

    return redirect_to post_index_path
  end

  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_path(@post), notice: '글이 수정되었습니다' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    return redirect_to post_index_path
  end

  # sqlite로 최소한의 db 사용하기 위해 글을 삭제하는 엑션으로 사용
  # def use_yn
  #     @post = Post.find(params[:id])
  #     respond_to do |format|
  #       @post.use_yn = 'N'
  #       @post.save
  #       return redirect_to post_index_path
  #     end
  # end

  private
    def post_params
      params.require(:post).permit(:user_id, :title, :content )
    end
end
