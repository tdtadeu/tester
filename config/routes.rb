Rails.application.routes.draw do
  resources :brands
  resources :pages, only: :index
  root "pages#index"
end
