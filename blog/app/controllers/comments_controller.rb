class CommentsController < ApplicationController
    def save
        user_id = 1 #suppose logged user id is 1
        Comment.create user_id: user_id, post_id: params[:id], content: params[:content]
        redirect_to :posts
    end
    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to :posts
    end
#     def edit
# @post=Post.all
#         @comment = Comment.find(params[:id])
#         # render :edit
#     end
#     def update

#         @comment = Comment.find(params[:id])
#         @comment.update(params.require(:comment).permit(:content))
#         redirect_to action: :index
#     end

end
