class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
  validates :content, length: {minimum: 100}
end
# 1. Add validations to `Post` such that...
# tru  1. The title cannot be blank
# tru  1. The category is either `"Fiction"` or `"Non-Fiction"`
# tru  1. The content is at least 100 characters long.
