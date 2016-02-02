class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to blog_path(@blog)
    else
      render :new
    end
  end

  def edit
  end

  def show
  end

  def delete
  end

  def blog_params
    params.require(:blog).permit(:title, :text)
  end
end
