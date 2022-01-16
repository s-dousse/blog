class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    
    redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id]) # locate the comment within the @article.comments collection
    @comment.destroy

    redirect_to article_path(@article), status: 303 # redirect to show action for the article
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end
