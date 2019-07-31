class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
    @article = Article.new
    @article.title = parmas[:input_title]
    @article.content = parmas[:input_content]
    @article.save
    redirect_to article_url
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

end