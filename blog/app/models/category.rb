class Category < ApplicationRecord
    has_and_belongs_to_many :articlesrel
    
    default_scope { order :name }
end
