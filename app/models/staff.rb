class Staff < ApplicationRecord

  validates :name, presence: true
  validates :age, presence: true, numericality: {:greater_than => 0}
  validates :designation, presence: true
end
