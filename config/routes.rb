Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :sellers, path: 'sellers',
          controllers: {
          sessions: 'sellers/sessions', 
          registrations: 'sellers/registrations'
        }
  
  devise_for :users, path: 'users', 
          controllers: {
          sessions: 'users/sessions', 
          registrations: 'users/registrations'
        }


  resources :sellers, only: [:index, :show]
  # index sellers will be in the home page  
  # Show seller when a customer choose the seller (add to cart and products will be there) /Nora
  resources :users, only: [:index, :show]
  # in my opinion we need index and show users JUST for us as an admin / Nora
  root "pages#home"
end
    