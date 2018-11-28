class AddColmToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :seller_id, :integer
  end
end
