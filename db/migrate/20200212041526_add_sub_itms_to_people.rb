class AddSubItmsToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :sub_itms, :decimal, default: "0.0"
  end
end
