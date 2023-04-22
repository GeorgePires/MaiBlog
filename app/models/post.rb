# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_many :tags, dependent: :destroy
  accepts_nested_attributes_for :tags, reject_if: :all_blank, allow_destroy: true

  has_rich_text :body

  validates :title, presence: true, length: { minimum: 5, maximum: 500 }
  validates :body, presence: true, length: { minimum: 12, maximum: 10_000 }

  paginates_per 3
end
