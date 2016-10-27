class Visit < ApplicationRecord
  belongs_to :owner
  belongs_to :dog
  belongs_to :dogpark
end
