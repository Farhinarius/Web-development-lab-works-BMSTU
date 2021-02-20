# frozen_string_literal: true

# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_username(params[:username])
    if
user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/', success: 'You Signed In Succesfully.'
      # 'input/input'
    else
      redirect_to '/login', danger: 'Invalid login or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/login', warning: 'You have been logged out.'
  end
end
