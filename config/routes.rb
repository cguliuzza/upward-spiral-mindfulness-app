Rails.application.routes.draw do
  resources :action_categories, only: [:index, :show, :create, :update, :destroy]
  resources :user_journals, only: [:index, :show, :create, :update, :destroy]
  resources :categories, only: [:index, :show, :create, :update, :destroy]
  resources :journals, only: [:index, :show, :create, :update, :destroy]
  resources :actions, only: [:index, :show, :create, :update, :destroy]
  resources :user_actions, only: [:index, :show, :create, :update, :destroy]
  resources :users, only: [:index, :update, :destroy]
  resources :sessions, only: [:create, :destroy]

  get '/me', to: 'users#show'
  post '/login', to: 'sessions#create'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'

end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html