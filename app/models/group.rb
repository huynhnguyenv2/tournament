class Group < ApplicationRecord
	has_many :players
	has_many :matchs, through: :players
end
