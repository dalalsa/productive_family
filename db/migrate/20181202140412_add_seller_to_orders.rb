class AddSellerToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :seller_id, :integer
  end
end
