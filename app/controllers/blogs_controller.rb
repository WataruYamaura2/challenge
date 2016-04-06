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

  def blog_params
    params.require(:blog).permit(:title, :body)
  end
end
