class Group < ApplicationRecord
	has_many :players
	has_many :matches, through: :players
  belongs_to :competition
end
