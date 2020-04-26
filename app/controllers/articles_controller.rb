class ArticlesController < ApplicationController
  before_action :set_article, only: [:destroy, :update]
  skip_before_action :authorize_request, only: :index

  def index
    @articles = Article.all.paginate(page: params[:page])
    json_response(@articles)
  end

  def create 
    @article = Article.create!(article_params)
    json_response(@article, :created) 
  end

  def update 
    @article.update!(article_params)
    head :no_content
  end

  def destroy
    @article.destroy! 
    head :no_content
  end
  private

  def article_params
    params.permit(:title, :description, :link)
  end

  def set_article 
    @article = Article.find(params[:id])
  end
end
