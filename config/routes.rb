Rails.application.routes.draw do
  resources :courses, only: [:index, :show]
  resources :works, only: [:index, :show]
  resource :resume, only: [:show]
  root to: 'home#show'
end
