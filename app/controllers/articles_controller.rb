class ArticlesController < ApplicationController
  def index
    @pagy, @articles = pagy(Article.all)
    set_meta_tags image_src: "https://github.com/jbeachy21/rails-blog/blob/master/app/assets/images/railsblog.png"
  end

  def show
    @article = Article.find(params[:id])
    set_meta_tags title: @article.title, site: "Jasper's Rails blog",
                  reverse: true, description: @article.body
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status, :user_id)
    end
end
