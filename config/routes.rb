Rails.application.routes.draw do
 resources :items
  devise_for :sellers
  devise_for :users
root "pages#home"
end
