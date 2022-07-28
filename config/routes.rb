Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "posts#index", as: :home
  # get 'posts/show'
  # get 'posts/new'
  # get 'posts/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :posts, only: [:index]
  get 'about/:tag', to: 'pages#about', as: :about

  # Defines the root path route ("/")
  # root "articles#index"
end
