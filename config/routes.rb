Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do

      resources :users, only: [:index, :update, :destroy]
      post '/signup', to: 'users#signup'
      
      get '/me', to: 'sessions#me'
      post '/login', to: 'sessions#login'
      delete '/logout', to: 'sessions#logout'

      resources :user_actions, only: [:index, :show, :create, :update, :destroy]
      resources :actions, only: [:index, :show, :create, :update, :destroy]
      resources :action_categories, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      
      resources :journals, only: [:index, :show, :create, :update, :destroy]
      resources :user_journals, only: [:index, :show, :create, :update, :destroy]
    end
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html