class Product < ApplicationRecord
  CATEGORIES = ['full kite', 'kite', 'board', 'harness', 'kite bar', 'accessories']
  STATUS = (1..5).to_a
  belongs_to :user
  has_many_attached :photos
  has_many :rentals

  validates :category, presence: true, inclusion: { in: ['full kite', 'kite', 'board', 'harness', 'kite bar', 'accessories'] }
  validates :description, presence: true
  validates :status, presence: true, inclusion: { in: (1..5) }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :address, presence: true

  geocoded_by :address

  after_validation :geocode, if: :will_save_change_to_address?

  def self.categories
    CATEGORIES
  end

  after_validation :add_city
  after_validation :add_country

  private

  def add_city
    self.city = Geocoder.search(address).first.present? ? Geocoder.search(address).first.city : "NC"
  end

  def add_country
    self.country = Geocoder.search(address).first.present? ? Geocoder.search(address).first.country : "NC"
  end
end
