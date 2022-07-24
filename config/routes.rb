Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/q', as: 'rails_admin'
  root to: "pages#home", as: :home
  get 'posts/index'
  get 'posts/show'
  get 'posts/new'
  get 'posts/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts

  get 'about/:field', to: 'pages#about', as: :about

  # Defines the root path route ("/")
  # root "articles#index"
end
