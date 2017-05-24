class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.string :description
      t.references :store, foreign_key: true

      t.timestamps
    end
  end
end
