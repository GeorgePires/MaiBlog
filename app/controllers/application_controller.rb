# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :configure_account_update_params, if: :devise_controller?

  around_action :switch_locale

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[first_name last_name email])
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: %i[first_name last_name])
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def switch_locale(&)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &)
  end
end
