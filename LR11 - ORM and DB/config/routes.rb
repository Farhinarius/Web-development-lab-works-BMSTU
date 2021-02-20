# frozen_string_literal: true

Rails.application.routes.draw do
  get 'input/input'

  get 'input/output'

  get 'input/queries'

  root 'input#input'

  resources :input
end
