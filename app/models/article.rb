class Article < ApplicationRecord
    validates :title, :body, :presence => true 

    belongs_to :user, class_name: "user", foreign_key: "user_id"
    has_and_belongs_to_many :categories
    has_many :comments

    scope :published, -> { where.not(published_at: nil)}
    scope :draft, -> { where(published_at: nil)}
    scope :recent, -> { where('articles.published_at > ?', 1.week.ago.to_date)}
    scope :where_title, -> (term) { where("articles.title LIKE ?", "%#{term}%")}
    # Ex:- scope :active, -> {where(:active => true)}
    def long_title
        "#{title} - #{published_at}"
    end

    def published?
        published_at.present?
    end
end
