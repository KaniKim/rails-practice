class Comment < ApplicationRecord
    belongs_to :article

    validates :name, :email, :body, presence: true
    validate :article_should_be_published

    def article_should_be_published
        errors.add(:article_id, "is not published yet") if article && !article.published?
    end

    def after_create
        puts "We will notify #{article.user.email} in Chapter 12" if article.user
    end
end
