Rails.application.routes.draw do
  root 'pubs#index'

  resources :pubs, only: [:index, :show, :new, :create, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end
end
