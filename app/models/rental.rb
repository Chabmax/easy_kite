class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :date_start, :date_end, presence: true

  validate :start_date_after_today?
  validate :end_date_after_start_date?
  validate :rental_period_is_free?

  private

  def start_date_after_today?
    return if date_start.blank?

    errors.add(:date_start, "must be equal or after today") if date_start < Date.today
  end

  def end_date_after_start_date?
    return if date_end.blank? || date_start.blank?

    errors.add(:date_end, "must be after the start date") if date_end < date_start
  end

  def rental_period_is_free?
    product.rentals.all? do |rental|
      start_before_start = date_start < rental.date_start
      end_before_start = date_end < rental.date_start
      start_after_end = date_start > rental.date_end
      end_after_end = date_end > rental.date_end

      if date_start > rental.date_start && date_start < rental.date_end
        errors.add(:date_start, "not available: alredy booked")
      end

      if date_end > rental.date_start && date_end < rental.date_end
        errors.add(:date_end, "not available: alredy booked")
      end

      unless (start_before_start && end_before_start) || (start_after_end && end_after_end)
        errors.add(:date_start, "not available: period not free")
        errors.add(:date_end, "not available: period not free")
      end

      (start_before_start && end_before_start) || (start_after_end && end_after_end)
    end
  end
end
