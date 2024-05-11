Rails.application.routes.draw do
  resources :registers, only: [:create, :index]
end
