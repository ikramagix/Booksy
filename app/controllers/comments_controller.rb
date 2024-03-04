class CommentsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_comment, only: [:edit, :update, :destroy]
    before_action :check_owner, only: [:edit, :update, :destroy]
  
    def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.build(comment_params)
      @comment.user = current_user
      if @comment.save
        redirect_to @article, notice: 'Comment was successfully added.'
      else
        redirect_to @article, alert: 'Unable to add comment.'
      end
    end

    def edit
        @article = @comment.article
      end
    
      def update
        if @comment.update(comment_params)
          redirect_to @comment.article, notice: 'Comment was successfully updated.'
        else
          render :edit
        end
      end    
  
    def destroy
      @comment.destroy
      redirect_to @comment.article, notice: 'Comment was successfully deleted.'
    end
  
    private
  
    def set_comment
      @comment = current_user.comments.find(params[:id])
    end
  
    def check_owner
      redirect_to(root_path, alert: "You are not authorized to perform this action.") unless @comment.user == current_user
    end
  
    def comment_params
      params.require(:comment).permit(:body)
    end
  end
  