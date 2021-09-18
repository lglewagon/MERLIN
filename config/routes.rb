Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'gardens#landing'
  resources :gardens, only: [:new, :create, :index, :show, :destroy] do
    resources :plants, only: [:index, :destroy]
  end
  resources :squares, only: [:show, :update]
end
