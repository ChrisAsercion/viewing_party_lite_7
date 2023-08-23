Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

    get "/register", to: "users#new"
    resources :users, only: [:create, :show] do
      resources :discover, only: [:index], controller: "users/discovers"
      resources :movies, only: [:index], controller: "users/movies"

    end

end
