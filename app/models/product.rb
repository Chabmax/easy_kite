class Product < ApplicationRecord
  CATEGORIES = ['aile', 'planche', 'harnai', 'barre', 'kit complet', 'accessoires']
  STATUS = (1..5).to_a
  belongs_to :user
  has_many_attached :photos
  has_many :rentals

  validates :category, presence: true, inclusion: {in: ['aile', 'planche', 'harnai', 'barre', 'kit complet', 'accessoires']}
  validates :description, presence: true
  validates :status, presence: true, inclusion: {in: (1..5)}
  validates :price, presence: true

  validates :address, presence: true
  validates :city, presence: true
end
