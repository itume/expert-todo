Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos do
    resource :finish, only: [:create, :destroy], module: "todos"
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
