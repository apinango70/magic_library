Rails.application.routes.draw do
  resources :authors
  resources :books
  root 'books#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # root "articles#index"

end
