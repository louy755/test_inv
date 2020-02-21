class AddInvTotToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :inv_tot, :decimal, default: "0.0"
  end
end
