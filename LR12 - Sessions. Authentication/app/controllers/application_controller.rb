# frozen_string_literal: true

# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    # get input/input page if logged-user in session
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
