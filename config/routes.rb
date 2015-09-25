Rails.application.routes.draw do
  devise_for :users
  root 'boards#index'
  resources :boards do
    resources :list
  end
end
