Rails.application.routes.draw do
  resources :articles
  resources :users
  root 'application#hello'
end
