class AddSubTotalToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :sub_total, :decimal, default: "0.0"
  end
end
