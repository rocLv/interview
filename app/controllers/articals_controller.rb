class ArticalsController < ApplicationController
  def index
    @articals = Artical.all
  end

  def show
    @artical = Artical.find(params[:id])
    @comments = @artical.comments
    unless @comments
      @comments = []
      @comments = @artical.comments.build
    end
  end
end
