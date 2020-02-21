class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :qunt
      t.string :item_type
      t.text :description
      t.decimal :price
      t.decimal :org_price, default: "0.0"
      t.decimal :tax, default: "0.0"
      t.decimal :delivery, default: "0.0"
      t.decimal :profit, default: "0.0"
      t.references :person, null: false, foreign_key: true

      t.timestamps
    end
  end
end
