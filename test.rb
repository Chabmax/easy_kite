
require 'date'

class Rental
  attr_reader :start_date, :end_date
  def initialize(start_date, end_date)
    @start_date = start_date
    @end_date = end_date
  end
end

rentals = [
  Rental.new(Date.new(2019, 9, 1), DateTime.new(2019, 9, 20)),
  Rental.new(Date.new(2019, 12, 1), DateTime.new(2019, 12, 20))
]

new_rental = Rental.new(Date.new(2019, 8, 2), DateTime.new(2020, 9, 3))

# start_date < end_date

is_valid = rentals.all? do |rental|
  start_before_start = new_rental.start_date < rental.start_date
  end_before_start = new_rental.end_date < rental.start_date
  start_after_end = new_rental.start_date > rental.end_date
  end_after_end = new_rental.end_date > rental.end_date
  if (start_before_start && end_before_start) || (start_after_end && end_after_end)
    true
  else
    false
  end
end

puts is_valid
