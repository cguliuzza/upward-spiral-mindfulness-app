Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      
      resources :users, only: [:index, :update, :destroy]
      post '/signup', to: 'users#create'
      get '/me', to: 'users#show'
      
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      
      resources :user_actions, only: [:index, :show, :create, :update, :destroy]
      resources :actions, only: [:index, :show, :create, :update, :destroy]
      resources :action_categories, only: [:index, :show, :create, :update, :destroy]
      resources :categories, only: [:index, :show, :create, :update, :destroy]
      
      resources :journals, only: [:index, :show, :create, :update, :destroy]
      resources :user_journals, only: [:index, :show, :create, :update, :destroy]

      resources :motivations, only: [:index, :show, :create, :update, :destroy]
      resources :motivation_categories, only: [:index, :show, :create, :update, :destroy]
    end
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html