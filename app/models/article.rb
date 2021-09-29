class Article < ApplicationRecord
    include Visible
    include AlgoliaSearch
    
    belongs_to :user
    has_many :comments, dependent: :destroy
    has_rich_text :body
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
    
  algoliasearch do
    attribute :title, :body, :status
  end

  end
