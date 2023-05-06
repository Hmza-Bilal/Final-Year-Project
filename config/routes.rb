Rails.application.routes.draw do
  devise_for :users
  #get 'homepage/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  #root "home_page#index"
  resources :posts

  authenticated :user do
    root to: "posts#index", as: :authenticated_root
  end
  root to:"homepage#index", as: :unauthenticated_root
end
