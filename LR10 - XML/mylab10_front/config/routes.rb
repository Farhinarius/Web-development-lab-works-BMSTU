Rails.application.routes.draw do
    root 'input#input'

    get '/count', to: 'input#count'
    
    get 'converter', to: 'converter#input'
end