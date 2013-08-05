class PostsController < ApplicationController
  def index
    @posts = Post.order('created_at DESC')
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    if @post.errors.any?
      @errors = []
      @post.errors.each do |attribute, message|
        @errors << "#{attribute}: #{message}"
      end
      render "posts/new"
    else
      redirect_to posts_path
    end

  end

  def show
    @post = Post.find_by_id(params[:id])
  end

  def destroy
    Post.delete(params[:id])
    redirect_to posts_path
  end
end
