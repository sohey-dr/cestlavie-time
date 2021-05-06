class Member < ApplicationRecord
  has_many :band_members
  has_many :bands, through: :band_members
  has_secure_password

  extend Enumerize
  enumerize :member_type, in: { "サークルメンバー" => 1, "OB" => 2, "他サークル" => 3 }
end