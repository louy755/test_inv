class AddDiscountToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :discount, :decimal, default: "0.0"
  end
end
