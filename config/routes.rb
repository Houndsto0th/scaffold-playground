Rails.application.routes.draw do
  resources :headphones

  root "home#dashboard"
end
