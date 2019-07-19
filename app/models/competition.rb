class Competition < ApplicationRecord
  has_many :groups
  has_many :matches, through: :groups
end
