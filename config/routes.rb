Rails.application.routes.draw do
  resources :searches
  resources :interests
  resources :inquiries
  resources :lists
  #get 'houses/search', to: 'houses#search'

  root 'sessions#new'

  resources :houses


  # do
  #   collection do
  #     get :search
  #   end
  # end



  resources :companies
  get 'sessions/new'
  get 'users/new'
  get  '/signup',  to: 'users#new'
  resources :users
  get 'users/:id/realtor', to: 'users#realtor'
  get 'users/:id/hunter', to: 'users#hunter'


  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #get 'users/:id/realtor', to: 'users#realtor', as: 'realtor'
  #get 'users/:id/hunter', to: 'users#hunter', as: 'hunter'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
