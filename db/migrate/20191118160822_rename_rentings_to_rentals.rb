class RenameRentingsToRentals < ActiveRecord::Migration[5.2]
  def change
    rename_table :rentings, :rentals
  end
end
