# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user, optional: true

  scope :desc_order, -> { order(created_at: :desc) }
end
