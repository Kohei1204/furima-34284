Rails.application.routes.draw do
  devise_for :users
  # get 'items/index'
  root to: 'items#index'
  # item "items/:id/update" => "posts#update"
  resources :items do
  # , only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end


  resources :users, only: :show
end
