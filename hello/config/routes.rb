Rails.application.routes.draw do
  get 'cards/index'
  get 'cards/show'
  get 'cards/add'
  get 'cards/edit'
  
  get 'people/index'
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

  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/add'
  get 'people/edit/:id', to: 'people#edit'
  patch 'peopl/edit/:id', to: 'people#update'
  post 'people/edit/:id', to: 'people#update'
  post 'people/add', to: 'people#create'
  get 'people/delete/:id', to: 'people#delete'
  get 'people/:id', to: 'people#show'
end
