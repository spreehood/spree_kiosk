class AddActiveToSpreeDisplays < ActiveRecord::Migration[7.1]
  def change
    add_column :spree_displays, :active, :boolean, default: false, null: false
  end

  def self.down
    remove_column :spree_displays, :products_array
  end
end
