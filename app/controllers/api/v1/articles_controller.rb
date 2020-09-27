class Api::V1::ArticlesController < API::V1::ApiController
  before_action :set_article, only: %i[show update]

  def index
    @articles = Article.all
    json_response(@articles)
  end

  def create
    @article = Article.create!(article_params)
    json_response(@article, :created)
  end

  def show
    json_response(@article)
  end

  def update
    @article.update(article_params)
    head :no_content
  end

  private

  def article_params
    params.permit(:summary, :title, :keywords, :components, :likes, :published_at)
  end

  def set_article
    @article = Article.find(params[:id])
  end
end
