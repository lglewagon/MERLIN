Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :gardens, only: [:new, :index, :update, :show, :destroy] do
    resources :square, only: [:new, :create, :update]
    resources :plants, only: [:show]
  end
end
