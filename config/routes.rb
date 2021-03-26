Rails.application.routes.draw do
  devise_for :users
  resources :spots, only: [:create, :show, :index, :update] do
    resources :ratings, only: [:create, :destroy]
  end
  root to: "users#index"
end
