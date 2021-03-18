class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @user = @comment.build_user
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.categories.build
    # @post.comments.build
    
  end

  def create
    # binding.pry
    post = Post.create(post_params)
    redirect_to post
  end

  private

  def post_params
    params.require(:post).permit(
      :title, :content,
      category_ids:[], 
      categories_attributes: [:name]#,
      #posts_attributes: [:content, :user_id, :post_id]      
    )
  end
end
