class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    # @comment = @post.comments.create(params[:comment].permit(:name, :body))
    @comment = Comment.new(params.require(:comment).permit(:name, :body))
    @comment.post = @post
    if @comment.save
      redirect_to post_path(@post)
    else
      render 'new'
    end

  end
end
