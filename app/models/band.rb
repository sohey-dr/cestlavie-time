class Band < ApplicationRecord
  has_many :band_members
  has_many :members, through: :band_members
end
