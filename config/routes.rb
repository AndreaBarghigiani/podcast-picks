Rails.application.routes.draw do
  root 'pages#index'

  get '/components', to: 'pages#components', as: :components
end
