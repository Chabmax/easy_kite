class AddRatingsToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :owner_rates, :integer
    add_column :rentals, :renter_rates, :integer
    add_column :rentals, :product_rates, :integer
  end
end
