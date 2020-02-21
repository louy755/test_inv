class AddOrgItmsPriceToPeople < ActiveRecord::Migration[6.0]
  def change
    add_column :people, :org_itms_price, :decimal, default: "0.0"
  end
end
