class Dog < ApplicationRecord
  belongs_to :owner
  has_many :visits
  has_many :dogparks, through: :visits
end
