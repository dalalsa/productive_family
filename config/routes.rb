Rails.application.routes.draw do
 
  devise_for :sellers
  devise_for :users
root "pages#home"
resources :orders do 
resources :items

end
end
