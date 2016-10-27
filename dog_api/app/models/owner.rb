class Owner < ApplicationRecord
  has_many :visits
  has_many :dogs
  has_many :dogparks, through: :visits
end
