class AddTotProfitToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :tot_profit, :decimal, default: "0.0"
  end
end
