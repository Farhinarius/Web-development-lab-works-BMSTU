Rails.application.routes.draw do
  get 'input/input'

  get 'input/output'

  root 'input#input'
end
