# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @posts = Post.includes(:user, :rich_text_body).order(created_at: :desc)
  end

  def about; end
end
