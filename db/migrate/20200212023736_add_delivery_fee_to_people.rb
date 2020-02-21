class AddDeliveryFeeToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :delivery_fee, :decimal, default: "0.0"
  end
end
