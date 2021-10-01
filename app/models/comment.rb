class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  has_rich_text :body
  validates :commenter, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
