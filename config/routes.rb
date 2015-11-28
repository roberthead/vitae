Rails.application.routes.draw do
  resources :works, only: [:index, :show]
  resource :resume, only: [:show]

  root to: 'home#show'
end
