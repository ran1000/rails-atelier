Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/q', as: 'rails_admin'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
