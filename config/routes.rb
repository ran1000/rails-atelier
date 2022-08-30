Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "posts#index", as: :home

  resources :posts, only: %i[new create edit update show index] do
    collection do
      get 'posts/:tag', to: "posts#category", as: 'category'
    end
  end

  get 'creativefuel', to: 'pages#creative_fuel', as: "creative_fuel"
  get 'about', to: 'pages#about', as: :about
  get 'reserved-area', to: 'pages#reserved', as: :reserved
  delete "posts/:id", to: "posts#delete", as: :delete_post
end
