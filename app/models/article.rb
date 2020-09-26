class Article < ApplicationRecord
  belongs_to :user

  has_many :components
  has_many :comments
  has_many :likes, foreign_key: 'article_like'

  validates_presence_of :summary, :tittle
end
