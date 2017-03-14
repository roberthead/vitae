Rails.application.routes.draw do
  resources :annotations, only: [:index, :show]
  resources :courses, only: [:index, :show]
  resource :literature_review, only: [:show]
  resources :questions, only: [:index]
  resource :thesis_project, only: [:show]
  resource :resume, only: [:show]
  resources :works, only: [:index, :show]

  get '/about', to: 'stories#show'

  root to: 'home#show'
end
