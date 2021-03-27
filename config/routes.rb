Rails.application.routes.draw do
  devise_for :users
  resources :spots, only: [:new, :create, :show, :index, :update, :destroy] do
    resources :ratings, only: [:create, :destroy]
  end
  root to: "users#index"
end
