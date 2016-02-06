class PostController < ApplicationController
  def new
    @post = Post.new
  end
  def index
    @posts = Post.all
  end
  def create
    if @post = Post.create(question_param)
      redirect_to index_post_path
    else
      render :new
    end
  end
  def show
   @question = Post.find(params[:id])
  end

  private

  def question_param
    params.require(:post).permit(:question)
  end
end
