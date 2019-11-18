class Renting < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_many :reviews

  validates :date_start, presence: true, uniqueness: true
  validates :date_end, presence: true, uniqueness: true
  validate :date_end_is_after_date_start?
  validate :date_start_is_after_or_equal_today?

  def date_start_is_after_or_equal_today?
    Date.today <= date_start
  end

  def date_end_is_after_date_start?
    date_start <= date_end
  end
end
