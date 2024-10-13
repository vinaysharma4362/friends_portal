Rails.application.routes.draw do
  get 'homepage', to: 'homes#index', as: 'home' 
  devise_for :users
  get 'dashboard/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"
end
