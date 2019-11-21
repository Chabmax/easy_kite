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

    if date_start < Date.today
      errors.add(:date_start, "must be equal or after today")
    end
  end

  def end_date_after_start_date?
    return if date_end.blank? || date_start.blank?

    if date_end < date_start
      errors.add(:date_end, "must be after the start date")
    end
  end

  def rental_period_is_free?
    free = self.product.rentals.all? do |rental|
      start_before_start = self.date_start < rental.date_start
      end_before_start = self.date_end < rental.date_start
      start_after_end = self.date_start > rental.date_end
      end_after_end = self.date_end > rental.date_end

      (start_before_start && end_before_start) || (start_after_end && end_after_end)
    end

    errors.add(:date_end, "date not available") unless free
  end
end
