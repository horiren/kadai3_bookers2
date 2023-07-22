Rails.application.routes.draw do
  get 'homes/top'
  devise_for :users
  root to: 'homes#top'
  get "homes/about" => "homes#about", as: "about"
  resources :books, only: [:edit, :index, :show, :create, :destroy]
  resources :users, only: [:edit, :show, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
