class Comment < ApplicationRecord
    belongs_to :article
end

#here we specify that a comment belongs to article model