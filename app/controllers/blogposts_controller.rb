class BlogpostsController < ApplicationController
  before_filter :authorize, except: [:index, :show]
  before_filter :authorize_blog_post, only: [:edit, :update, :destroy]

  def index
    @blog_posts = Blogpost.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def show
    @blog_post = Blogpost.find(params[:id])
    @comment = @blog_post.comments.build(user_id: current_user.id) if current_user

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @blog_post = current_user.blogposts.build

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @blog_post = current_user.blogposts.create(params[:blogpost])
    respond_to do |format|
      if @blog_post.save
        flash[:notice] = 'Blogpost was successfully created.'
        format.html { redirect_to(blog_path) }
      else
        format.html { render "new" }
      end
    end
  end

  def edit
    @blog_post = Blogpost.find(params[:id])
    respond_to do |format|
      format.html # edit.html.erb
    end
  end

  def update
    @blog_post = Blogpost.find(params[:id])

    respond_to do |format|
      if @blog_post.update_attributes(params[:blogpost])
        flash[:notice] = 'Blogpost was successfully updated.'
        format.html { redirect_to(@blog_post) }
      else
        format.html { render "edit" }
      end
    end
  end

  def destroy
    @blog_post = Blogpost.find(params[:id])
    @blog_post.destroy

    respond_to do |format|
      format.html { redirect_to(blogposts_path) }
    end
  end

  private

  def authorize_blog_post
    @blog_post = Blogpost.find(params[:id])
    deny_access if !current_user.blogposts.include?(@blog_post) 
  end
end
