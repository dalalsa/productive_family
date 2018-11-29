Rails.application.routes.draw do
 
  devise_for :sellers
  devise_for :users
<<<<<<< HEAD
root "pages#home"
resources :orders do 
resources :items

end
=======
  resources :sellers, only: [:index, :show]
  # index sellers will be in the home page  
  # Show seller when a customer choose the seller (add to cart and products will be there) /Nora
  resources :users, only: [:index, :show]
  # in my opinion we need index and show users JUST for us as an admin / Nora
  root "pages#home"
>>>>>>> 7b3a8ca41e79e3fd6863ddc2e9a788d0dd4126d8
end
