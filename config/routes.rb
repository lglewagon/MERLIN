Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'gardens#new'
  resources :gardens, only: [:new, :create, :index, :show, :destroy] do
    resources :squares, only: [:create]
    resources :plants, only: [:index]
  end
  resources :squares, only: [:show, :update]
end
