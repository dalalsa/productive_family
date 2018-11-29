class AddColumnToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :item_id, :integer
  end
end
