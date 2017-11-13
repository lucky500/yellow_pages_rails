Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :categories
  root 'categories#home'

  get 'about', to: 'categories#about'

  get 'show', to: 'categories#show'

  get '/categories/new', to: 'categories#new'
end
