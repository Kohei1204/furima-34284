class CommentsController < ApplicationController
  def new
    @comments = Comment.all
    @comment = Comment.new
  end
  def create
    @comment = Comment.new(comment_params)
    # @comment = Comment.new(text: params[:comment][:text])
    if @comment.save
      ActionCable.server.broadcast 'comment_channel', content: @comment
      redirect_to item_path(@comment.item)
    else
      # @item = @comment.item
      # @comments = @item.comments
      # render "items/show"
    end
    # Comment.create(comment.params)
    # redirect_to "/items/#{comment.item.id}"
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end
