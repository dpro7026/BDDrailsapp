class Article < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  # Order the articles with the newest first
  default_scope { order(created_at: :desc) }
end
