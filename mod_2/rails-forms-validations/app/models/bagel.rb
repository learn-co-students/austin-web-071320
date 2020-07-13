class Bagel < ApplicationRecord
  validates(:name, { presence: true, uniqueness: true })
  validates :price, numericality: { presence: true, only_integer: true, less_than: 30 }

  validates :validate_num_for_price

  def validate_num_for_price
    if self.price.class != Integer || self.price > 30
      errors.add(:price, "Needs to be a number less than 30")
    end
  end

end
