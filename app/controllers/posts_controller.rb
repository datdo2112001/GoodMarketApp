class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: :destroy

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
  end

  def create
    @post = current_user.posts.build(post_params)
    @post.image.attach(params[:post][:image])
    if @post.save
      flash[:success] = 'Post created!'
      redirect_to uppost_path
    else
      render 'static_pages/home'
    end
  end

  def destroy
    @post.destroy
    flash[:success] = 'Post deleted'
    if request.referrer.nil? || request.referrer == posts_url
      redirect_to uppost_path
    else
      redirect_to request.referrer
    end
  end

  private

    def post_params
      params.require(:post).permit(:title, :content, :kind, :price, :image)
    end

    def correct_user
      @post = current_user.posts.find_by(id: params[:id])
      redirect_to uppost_path if @post.nil?
    end

end
