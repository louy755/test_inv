class AddProfitPerToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :profit_per, :decima, default: "0.0"
  end
end
