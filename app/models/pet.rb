class Pet < ApplicationRecord
  validates :species, inclusion: { in: %w(cat dog dragon),
                      message: "%{value} is not a valid species" }
  validates :age, presence: true
  validates :found_location, presence: true
end
