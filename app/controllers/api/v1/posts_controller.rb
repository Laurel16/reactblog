class Api::V1::PostsController < ApplicationController

  def index
    posts= Post.all
    render json: posts
  end

  def show
    post = post.find(params[:id])
    render json: post
  end

  def create
    post = Post.create(post_params)
    render json: post

  end

  private

  def post_params
    params.require(:post).permit(:title, :content)

  end

end
