Rails.application.routes.draw do
  resources :works, only: [:index, :show]
  get 'home/show'

  root to: 'home#show'
end
