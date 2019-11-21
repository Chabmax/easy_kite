class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :products, dependent: :destroy
  has_many :rentals

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  def full_name
    "#{first_name.capitalize} #{last_name.capitalize}"
  end

  def rentals_as_owner
    products.map(&:rentals).flatten.sort_by(&:date_start)
  end
end
