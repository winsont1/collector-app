Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :items

  # get 'items', to: 'items#index'
  # post 'items', to: 'items#create'
  # get 'items/new', to: 'items#new'
  # get 'items/:id/edit', to: 'items#edit'
  # get 'items/:id', to: 'items#show', as: :item
  # patch 'items/:id', to: 'items#update'
  # delete 'items/:id', to: 'items#destroy'
end
