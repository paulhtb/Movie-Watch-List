Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'movies#index'
  resources :movies, only: %w[index show] do
    resources :bookmarks, only: %w[new create]
  end
  resources :bookmarks, only: %w[destroy]
  resources :lists, only: %w[index show create destroy]
end
