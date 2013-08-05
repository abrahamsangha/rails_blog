class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def new

  end

  def create
    @post = Post.create(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def delete
    Post.delete(params[:id])
  end
end
