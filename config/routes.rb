Rails.application.routes.draw do
  get 'journeys/index'
  get 'journeys/show'
  get 'journeys/new'
  get 'journeys/create'
  get 'journeys/edit'
  get 'journeys/update'
  get 'journeys/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :journeys
  resources :cities, only:[:index, :show]

  get "/journeys/generate/new", to: "journeys#generate_new"
  post "/journeys/create/new", to: "journeys#create_new"

  get 'dashboard', to: 'pages#dashboard'
  get 'profile', to: 'pages#profile'
end
