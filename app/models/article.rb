class Article < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    has_many :comments
end

#we're practically giving the possibility to articles to have comments