class CommentsController < ApplicationController
  before_filter :authorize

  def create
    @blog_post = Blogpost.find(params[:blogpost_id])
    @comment = @blog_post.comments.create(params[:comment])
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @blog_post }
        format.js
      else
        format.html { redirect_to @blog_post }
      end
    end
  end

end
