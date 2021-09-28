class Comment < ApplicationRecord
  include Visible
  belongs_to :article
  has_rich_text :body
end
