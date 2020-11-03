class CreateIngercpes < ActiveRecord::Migration[6.0]
  def change
    create_table :ingercpes do |t|
      t.string :measurement
      t.integer :ingredient_id
      t.integer :recipe_id

      t.timestamps
    end
  end
end
