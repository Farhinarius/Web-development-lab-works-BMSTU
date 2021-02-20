Rails.application.routes.draw do
  get 'source/input'
  
  get 'source/output'
  
  root 'source#input'
end
