class ArticlesController <ApplicationController
  
def new
  @article = Article.new
end
  
  
  def create
   
    @article = Article.new(article_param)
    @article.save
    redirect_to articles_show(@articles)
  end
  
  private
    def article_param
      params.require(:article).permit(:title, :description)
    end
end
