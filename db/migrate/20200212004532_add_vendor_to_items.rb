class AddVendorToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :vendor, :string
  end
end
