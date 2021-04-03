class Member < ApplicationRecord
  has_many :band_members
  has_many :bands, through: :band_members

  extend Enumerize
  enumerize :member_type, in: { "" 1, aupay: 2, choice: 3, furunavi: 4, furusato_premium: 5, rakuten: 6, ana: 7 }
end