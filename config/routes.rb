Rails.application.routes.draw do
  resources :brands do
    resources :partners, shallow: true do
      resources :products
    end
  end

  resources :pages, only: :index

  root "pages#index"
end
