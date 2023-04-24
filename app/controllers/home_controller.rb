# frozen_string_literal: true

class HomeController < ApplicationController
  layout 'home'

  def index
    @q = Post.ransack(params[:q])
    @posts = @q.result.includes(:user, :rich_text_body).desc_order.page(params[:page])
  end

  def about; end
end
