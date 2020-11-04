Rails.application.routes.draw do
  get 'sessions/create'

  get 'sessions/destroy'

  root "home#index"
  resources :boards
  resources :comments, only:[:create, :destroy]
end