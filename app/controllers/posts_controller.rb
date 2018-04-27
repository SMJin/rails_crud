class PostsController < ApplicationController
  def index
    @post_index = Post.all
  end

  def new
  end

  def update
  end

  def show
    @post_show = Post.find(params[:id])
  end

  def create
    @post_create = Post.new #Post는 db를 가리킨다.
    @post_create.title = params[:head]
    @post_create.content = params[:inside]
    @post_create.save
    redirect_to '/posts/index'
  end

  def edit
  end

  def destroy
  end
end
