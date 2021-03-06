# app/controllers/application_controller.rb
# frozen_string_literal: true

# class describing the application controller
class ApplicationController < ActionController::Base
  # for signed up successfully:
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(account)
    account_path(account)
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username bio avatar])
  end

  private

  def authenticate_account!
    if account_signed_in?
      super
    else
      redirect_to new_account_session_path
    end
  end
end
