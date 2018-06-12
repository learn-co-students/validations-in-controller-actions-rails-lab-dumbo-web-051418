class Author < ActiveRecord::Base
  validates :name, presence: true
  validates :email, uniqueness: true
end

# 1. Add validations to `Author` such that...
#   1. The name cannot be blank
#   1. The e-mail is unique
