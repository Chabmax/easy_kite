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

  def total
    total = [0,0]
    rentals_as_owner.each do |rental|
      if rental.date_start >= Time.now
        total[0] += rental.product.price * (rental.date_end - rental.date_start + 1 ).to_i
      else
        total[1] += rental.product.price * (rental.date_end - rental.date_start + 1 ).to_i
      end
    end
    total
  end

end
