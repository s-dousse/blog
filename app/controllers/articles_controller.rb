class ArticlesController < ApplicationController

  #tp_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  # user to be authenticated on every action except index and show

  before_action :authenticate_user!

  def index
    @articles = Article.all
  end

  def show # shows a specific article
    @article = Article.find(params[:id])
  end

  def new # instantiates new article but does not save it 
    @article = Article.new
  end

  def create # press submit => post request ./articles => create action
    @article = Article.new(article_params) # instantiates new article

    if @article.save # save article
      redirect_to @article # redirect_to : browser makes a new request, use after mutation database or app state
    else
      render :new, status: :unprocessable_entity  # renders the specified view for the current request
    end
  end

  def edit
    @article = Article.find(params[:id])  # fetches the article from the db, and storesin @article
                                          # render app/views/articles/edit.html.erb
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params) #(re-)fetches the article from the db, and attempts to update it (submitted form)
      redirect_to @article # no validations fail + update successful => redirects to the article's page
    else
      render edit:, status: :unprocessable_entity # renders app/views/articles/edit.html.erb
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end
end
