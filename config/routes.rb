Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/q', as: 'rails_admin'
  root to: "pages#home"
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts

  # Defines the root path route ("/")
  # root "articles#index"
end
