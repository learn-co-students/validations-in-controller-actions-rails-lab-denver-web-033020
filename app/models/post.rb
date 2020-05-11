class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} is not a valid selection" }
    validates :content, length: {minimum:100}
end
