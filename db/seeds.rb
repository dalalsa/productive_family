# User.destroy_all
# Product.destroy_all 
# Item.destroy_all 
# Cart.destroy_all
# Order.destroy_all 
# Seller.destroy_all

Product.create(name: "cakes ", image:"ddddd", price: 22, category: "sweet", description: "cakes for best taste", seller_id: 2 );
Product.create(name: "soda", image:"dgbgdd", price: 2342, category: "مالح", description: "cakes for best taste", seller_id: 1 );
Order.create(user_id: 1, status: "pending");
Item.create(product_id: 10,order_id:1, cart_id: 1 , quantity:2 );

# Item.create(: 1, status: "pending");
