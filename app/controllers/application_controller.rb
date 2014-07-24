class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end
  helper_method :forem_user


  def forem_user
    sessions_controller
  end
  helper_method :forem_user


  def forem_user
    sessions
  end
  helper_method :forem_user

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper
end
