class PostsController < ApplicationController
  def index
    @posts = Post.all.oeder(id: "DESC")
  end

  

  def create
  
    Post.create(content: params[:content])
    redirect_tp actin: :index
  end
end