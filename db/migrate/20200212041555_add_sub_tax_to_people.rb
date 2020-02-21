class AddSubTaxToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :sub_tax, :decimal, default: "0.0"
  end
end
