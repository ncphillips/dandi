Rails.application.routes.draw do
  resources :messages
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root "homepage#index"

  resources :campaigns do
    resources :messages
  end
end
