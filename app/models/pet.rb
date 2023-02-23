class Pet < ApplicationRecord
  SPECIES = %w(Dog Cat Rabbit Snake Turtle Bird)

  validates :name, presence: true
  validates :address, presence: true
  validates :species, inclusion: { in: SPECIES }
end
