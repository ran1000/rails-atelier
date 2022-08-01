class Post < ApplicationRecord
  has_many :posts_categories
  has_many :categories, through: :posts_categories
  has_many_attached :photos

  validates :title, presence: true
end
