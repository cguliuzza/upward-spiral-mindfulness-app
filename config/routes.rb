Rails.application.routes.draw do
  resources :action_categories, only: [:index, :show]
  resources :user_journals, only: [:index, :show]
  resources :categories, only: [:index, :show]
  resources :journals, only: [:index, :show]
  resources :actions, only: [:index, :show]
  resources :user_actions, only: [:index, :show]
  resources :users, only: [:index, :show, :create]

  # get "/user_journals", to: "user_journals#index"

end

# get "/hello", to: "application#hello_world"

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html