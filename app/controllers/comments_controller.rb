class CommentsController < ApplicationController
  def create    
	 	@post = Post.find(params[:post_id])    
    p = params.require(:comment).permit(:text)        
    @comment = Comment.new(p)
    @comment.post_id = params[:post_id]  	
  	@comment.save
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment.post
  end
end
