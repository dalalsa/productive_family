class AddStoToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :stock, :integer
    add_column :products, :units, :integer
  end
end
