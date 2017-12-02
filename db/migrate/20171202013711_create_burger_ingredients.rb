class CreateBurgerIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :burger_ingredients do |t|
      t.integer :burger_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
