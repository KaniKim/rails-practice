Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end
  resources :users
  root to: "articles#index"
end
