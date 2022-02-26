Rails.application.routes.draw do
  get 'hello/index'
  get 'hello/other'
  post 'hello', to: 'hello#index'
  post 'hello/index'
  get 'hello', to: 'hello#index'
end
