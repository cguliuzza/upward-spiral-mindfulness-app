Rails.application.routes.draw do
  resources :action_categories, only: [:index]
  resources :user_journals, only: [:index]
  resources :categories, only: [:index]
  resources :journals, only: [:index]
  resources :actions, only: [:index]
  resources :user_actions, only: [:index]
  resources :users, only: [:index]

end

# get "/hello", to: "application#hello_world"

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html