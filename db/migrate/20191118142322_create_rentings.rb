class CreateRentings < ActiveRecord::Migration[5.2]
  def change
    create_table :rentings do |t|
      t.references :user, foreign_key: true
      t.references :product, foreign_key: true
      t.date :date_start
      t.date :date_end

      t.timestamps
    end
  end
end
