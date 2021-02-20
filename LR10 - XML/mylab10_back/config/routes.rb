Rails.application.routes.draw do
  root 'input#input'
  get ':n', to: 'input#count'
end
