# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user

  has_rich_text :body

  validates :title, presence: true, length: { minimum: 5, maximum: 50 }
  validates :body, presence: true, length: { minimum: 12, maximum: 1000 }
end
