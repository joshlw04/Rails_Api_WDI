class Dogpark < ApplicationRecord
  has_many :visits
  has_many :dogs, through: :visits
  has_many :owners, through: :visits
end
