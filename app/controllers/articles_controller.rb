class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    if @article.save
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :content, :category)
  end
end
