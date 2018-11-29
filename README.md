# README 2

Devise for Seller

Controller - app/controllers/sellers/...
Views - app/views/sellers/...

Sign In path: new_seller_session_path
Sign Up path: new_seller_registration_path
Edit path: edit_seller_registration_path
Sellers Index: sellers_path (app/controllers/sellers_controller)
Sellers Show: seller_path (app/controllers/sellers_controller)

Devise for User

Controller - app/controllers/users/...
Views - app/views/users/...

Sign In path: new_user_session_path
Sign Up path: new_user_registration_path
Edit path: edit_user_registration_path
Users Index: users_path (app/controllers/users_controller)
Users Show: user_path (app/controllers/users_controller)

class Item < ApplicationRecord
belongs_to :order
belongs_to :product
  
end

class Order < ApplicationRecord
has_many :items
end

class Product < ApplicationRecord
belongs_to :seller
has_many :items
end

class Seller < ApplicationRecord
has_many :products
end
