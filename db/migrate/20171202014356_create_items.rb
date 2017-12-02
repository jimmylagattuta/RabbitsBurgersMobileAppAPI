class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :item_type_id
      t.integer :price
      t.integer :order_item_id

      t.timestamps
    end
  end
end
