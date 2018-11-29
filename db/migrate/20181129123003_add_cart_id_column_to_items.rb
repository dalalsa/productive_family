class AddCartIdColumnToItems < ActiveRecord::Migration[5.2]
  def change
        add_column :items, :cart_id, :integer

  end
end
