class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    redirect_to posts_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def delete
    Post.delete(params[:id])
    redirect_to posts_path
  end
end
