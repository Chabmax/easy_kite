class Product < ApplicationRecord
  CATEGORIES = ['aile', 'planche', 'harnai', 'barre', 'kit complet', 'accessoires']
  belongs_to :user
  has_many :rentings

  validates :category, presence: true, inclusion: {in: ['aile', 'planche', 'harnai', 'barre', 'kit complet', 'accessoires']}
  validates :description
  validates :status, presence: true, inclusion: {in: (1..5)}
  validates :price, presence: true
end
