class CommentsController < ApplicationController

  def create
    @blog_post = Blogpost.find(params[:blogpost_id])
    @comment = @blog_post.comments.create(params[:comment])
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @blog_post }
      else
        format.html { render "new" }
      end
    end
  end

end
