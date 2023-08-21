class CreateHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :histories do |t|
      t.string :order_date
      t.integer :items_count
      t.float :cost
      t.string :status

      t.timestamps
    end
  end
end
