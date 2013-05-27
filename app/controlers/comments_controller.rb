class CommentsController < ApplicationController
  before_filter :authenticate_user!

  def create
   @comment = current_user.comments.create(params[:comment])
   redirect_to :back
  end

  def destroy
   Comment.find(params[:id]).destroy
   redirect_to :back, :notice => "Comment successfully deleted"
  end
end