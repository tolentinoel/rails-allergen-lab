Rails.application.routes.draw do
  resources :ingredients
  resources :users
  resources :recipes
  resources :allergens
  resources :ingercpes
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
