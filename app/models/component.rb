class Component < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validate_presence_of :content, :type
end
