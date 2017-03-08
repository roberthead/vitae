Rails.application.routes.draw do
  resources :annotations, only: [:index, :show]
  resources :courses, only: [:index, :show]
  resources :works, only: [:index, :show]
  resources :questions, only: [:index]
  resource :literature_review, only: [:show]
  resource :resume, only: [:show]

  get '/about', to: 'stories#show'

  root to: 'home#show'
end
