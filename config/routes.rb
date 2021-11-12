Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :action_categories, only: [:index, :show, :create, :update, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :user_journals, only: [:index, :show, :create, :update, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :categories, only: [:index, :show, :create, :update, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :journals, only: [:index, :show, :create, :update, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :actions, only: [:index, :show, :create, :update, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :user_actions, only: [:index, :show, :create, :update, :destroy]
    end
  end
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :update, :destroy]
      get '/me', to: 'users#show'
      post '/signup', to: 'users#signup'
    end
  end
  namespace :api do
    namespace :v1 do
      resources :sessions, only: [:create, :destroy]
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
    end
  end
end

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html