class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :cart, null: false, foreign_key: true
      t.string :name
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
