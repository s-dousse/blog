class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new # instantiates new article but does not save it 
    @article = Article.new
  end

  def create
    @article = Article.new(article_params) # instantiates new article

    if @article.save # save article
      redirect_to @article # redirect_to : browser makes a new request, use after mutation database or app state
    else
      render :new, status: :unprocessable_entity  # renders the specified view fro the current request
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
