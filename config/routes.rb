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
end
