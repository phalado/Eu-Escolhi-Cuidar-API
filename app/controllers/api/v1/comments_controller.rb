class Api::V1::CommentsController < Api::V1::ApiController
  before_action :set_comment, only: %i[update destroy]

  def index
    @comments = Comment.all.select { |c| c.article_id == params[:id] }
    json_response(@comments)
  end

  def create
    @comemnt = Comment.create!(comment_params)
    json_response(@comment, :created)
  end

  def update
    @comment.update(comment_params)
    head :no_content
  end

  def destroy
    @comment.destroy
    head :no_content
  end

  private

  def comment_params
    params.permit(:user_id, :article_id, :content, :edited, :likes, :author_like)
  end

  def set_comment
    @comment = Comment.find(params[:id])
  end
end
