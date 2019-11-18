class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :category
      t.string :brand
      t.text :description
      t.integer :status
      t.integer :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
