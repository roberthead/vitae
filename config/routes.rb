Rails.application.routes.draw do
  resources :annotations, only: [:index, :show]
  resources :courses, only: [:index, :show]
  resources :works, only: [:index, :show]
  resource :resume, only: [:show]

  root to: 'home#show'
end
