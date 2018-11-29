class AddCulToSellers < ActiveRecord::Migration[5.2]
  def change
    add_column :sellers, :phone, :string
  end
end
