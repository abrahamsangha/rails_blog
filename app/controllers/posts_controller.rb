class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def post
    @post = Post.find(params[:id])
  end
end
