Rails.application.routes.draw do
  get 'msgboard/index'
  get 'hello/index'
  get 'hello/other'
  post 'hello', to: 'hello#index'
  post 'hello/index'
  get 'hello', to: 'hello#index'

  get 'msgboard', to: 'msgboard#index'
  post 'msgboard', to: 'msgboard#index'
  get 'msgboard/index'
  post 'msgboard/index'
end
