Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  get "home/about" => "homes#about", as: "about"
  resources :books, only: [:edit, :index, :show, :create, :destroy, :update]
  resources :users, only: [:edit, :show, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
