class Post < ApplicationRecord
    validates :username, :content, presence: true
end
