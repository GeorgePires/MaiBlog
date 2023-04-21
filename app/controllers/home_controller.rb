# frozen_string_literal: true

class HomeController < ApplicationController
  layout 'home'

  def index
    @posts = Post.includes(:user, :rich_text_body).order(created_at: :desc).page(params[:page])
  end

  def about; end
end
