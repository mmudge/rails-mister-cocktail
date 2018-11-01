Rails.application.routes.draw do
  resources :cocktails do
    resources :doses, only: [:new, :create]
    resources :ingredients
  end
  resources :doses, only: [:destroy]
end
