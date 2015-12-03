Rails.application.routes.draw do
  resources :brands do
    resources :partners
  end

  resources :pages, only: :index

  root "pages#index"
end
