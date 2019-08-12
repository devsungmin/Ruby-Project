class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to @article
  end

  def show
  end

  def index
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def set_article
    @article = Article.find(parmas[:id])
  end

  def article_params
    params.require(:article).permit(:title, :content)
  end

end