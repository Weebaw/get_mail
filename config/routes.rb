Rails.application.routes.draw do
  resources :email, only: [:index, :new, :create]
end
