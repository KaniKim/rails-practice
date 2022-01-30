class Article < ApplicationRecord
    validates :title, :body, :presence => true 
    has_and_belongs_to_many :categories
    has_many :comments
    def long_title
        "#{title} - #{published_at}"
    end
end
