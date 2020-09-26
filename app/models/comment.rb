class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :article

  has_many :com_likes, foreign_key: 'article_like'
end
