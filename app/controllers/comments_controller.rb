class CommentsController < ApplicationController

  def create
    @comment = Comment.new(params[:comment])
    @comment.place_id = params[:place_id]
    @comment.user_id = current_user.id

    if @comment.save
      respond_to do |format|
        format.html { redirect_to place_path(params[:place_id]) }
        format.js
      end    
    else
      redirect_to root_path
    end
  end

end
