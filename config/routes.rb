Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "posts#index", as: :home

  resources :posts, only: %i[index show new create edit patch] do
    collection do
      get 'posts/:tag', to: "posts#category", as: 'category'
    end
  end

  get 'creativefuel', to: 'pages#creative_fuel', as: "creative_fuel"
  get 'about', to: 'pages#about', as: :about
  get 'reserved-area', to: 'pages#reserved', as: :reserved
end
