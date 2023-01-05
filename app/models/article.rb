class Article < ApplicationRecord
  validates :title, :content, :category, presence: true
end
