# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  get 'input/input'
  get 'input/output'
  get 'input/queries'
  get 'input/users'

  root 'input#input'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
end
