class AddColmToSeller < ActiveRecord::Migration[5.2]
  def change
    add_index :sellers, :username, unique: true

  end
end
