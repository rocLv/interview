class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    unless @comments
      @comments = []
      @comments = @post.comments.build
    end
  end

end
