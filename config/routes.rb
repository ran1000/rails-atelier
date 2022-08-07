Rails.application.routes.draw do
  devise_for :users
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: "posts#index", as: :home

  resources :posts, only: %i[index show] do
    collection do
      get :category
    end
  end
  get 'about/:tag', to: 'pages#about', as: :about
end
